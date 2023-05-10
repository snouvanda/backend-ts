import { NextFunction, Request, Response } from "express"
import { merge } from "lodash"
import jwt from "jsonwebtoken"
import { hashPassword, random, comparePassword } from "../helpers/authHelper"
import {
  isPasswordValid,
  isRoleValid,
  isRegistrationInputsValid,
} from "../helpers/dataValidationHelper"
import dra, { setFault } from "../helpers/messageHelper" //developer recommended action after error occured.
import {
  createUser,
  validateUserByEmail,
  isEmailExists,
  updateUser,
} from "../db/usersData"

export const registerUser = async (req: Request, res: Response) => {
  try {
    // Prepare inputs.
    const { email, name, phone, password, requestedRole } = req.body

    //
    // Validate inputs.
    if (!email || !name || !password || !requestedRole) {
      let fault = setFault(
        "All mandatory fields are required.",
        dra.b2_signup_p,
      )
      return res.status(400).json(fault)
    }

    //
    // Validate inputs value
    console.log("validating input value")
    const inputFault = await isRegistrationInputsValid(
      email,
      name,
      password,
      requestedRole,
      phone,
    )

    if (!("valid" in inputFault)) {
      console.log("Faulted")
      return res.status(400).json(inputFault)
    }

    //
    // Check if email already registered.
    const emailExists = await isEmailExists(email)

    if (emailExists) {
      let fault = setFault("Email already registered.", dra.b2_signup_p)
      return res.status(400).json(fault)
    }

    //
    // Create user
    console.log("creating salt")
    const salt = random()
    console.log(`salt done (len:${salt.length}). Now hashing password`)

    // const hashedPassword = hashPassword(salt, password)
    const hashedPassword = hashPassword(salt, password)
    console.log(`hashed password done. (len:${hashedPassword.length})`)
    console.log("check hashed password is valid")
    if (!comparePassword(salt, password, hashedPassword)) {
      console.log("hashed password is invalid")
    } else {
      console.log("hashed password is valid")
    }

    console.log("trying to log in")
    await login(req, res, {
      id: "lkdaflk",
      email: email,
      role: "gues",
      hashedPassword,
    })
    console.log("login success")

    // if (true)
    //   return res.send(200).json({ message: "after login in register function" })
    console.log("add user to database")
    const user = await createUser({
      email: email,
      name: name,
      phone: phone,
      requestedRole: requestedRole,
      role: "guest",
      isActive: true,
      regApproval: "pending",
      salt: salt,
      password: hashedPassword,
      createdBy: null,
    })

    //
    // log in user

    // return respond
    // userCreated: {id, email, name, phone, requestedRole, role, isActive, regApproval}
    return res.status(201).json(user).end()

    //
  } catch (error) {
    console.log(error)
    return res.sendStatus(400)
  }
}

export const login = async (
  req: Request,
  res: Response,
  registration?: {
    id: string
    email: string
    role: string
    hashedPassword: string
  },
  next?: NextFunction,
) => {
  let xid: string,
    xemail: string,
    xrole: string,
    xpassword: string,
    xhpassword: string
  if (registration) {
    const { id, email, role, hashedPassword } = registration
    xid = id
    xemail = email
    xrole = role
    xhpassword = hashedPassword
    xpassword = "<skip by registration>>" //not use but pre-assigned to prevent error
  } else {
    const { id, email, role, password } = req.body
    xid = id
    xemail = email
    xrole = role
    xpassword = password
    xhpassword = "<skip by request.body>" //not use but pre-assigned to prevent error
  }

  console.log("xid:", xid)
  console.log("xemail:", xemail)
  console.log("xrole", xrole)
  console.log("xpassword", xpassword)
  console.log("xhpassword", xhpassword)

  if (registration) {
    console.log("login and continue next function")
    next
  }

  return xid
}

export const updateRegistration = async (req: Request, res: Response) => {
  try {
    // Prepare inputs.

    const { email, name, phone, password, newPassword, requestedRole } =
      req.body

    //
    // Validate inputs email and password.

    if (!email || !password) {
      return res
        .status(400)
        .json({ message: "Email and password are required." })
    }

    //
    // Check if user exist

    const validUser = await validateUserByEmail(email)

    if (!validUser) {
      return res.status(404).json({ message: "User registration not found." })
    }

    //
    // Validate password.

    const expectedHash = hashPassword(validUser.salt!, password)

    if (validUser.password !== expectedHash) {
      return res.sendStatus(403)
    }

    //
    // Validate registration approval status
    if (validUser.regApproval === "approved") {
      return res.status(405).json({ message: "Not allowed. Login required." })
    } else if (validUser.regApproval === "denied") {
      return res
        .status(403)
        .json({ message: "Forbidden. Registration denied." })
    }

    //
    // Check if user changes password

    let salt: string = ""
    let hashedPassword: string = ""

    if (newPassword) {
      salt = random()
      hashedPassword = hashPassword(salt, newPassword)
    }

    //
    // Validate update inputs.

    if (!name || !phone || !requestedRole) {
      return res
        .status(400)
        .json({ message: "All mandatory fields are required." })
    }

    //
    // Prepare data object

    const target = { email: email, id: validUser.id }
    const payload = {}

    if (name) {
      merge(payload, { name: name })
    }
    if (phone) {
      merge(payload, { phone: phone })
    }
    if (requestedRole) {
      merge(payload, { requestedRole: requestedRole })
    }
    merge(payload, { role: "guest" })
    merge(payload, { isActive: true })
    merge(payload, { regApproval: "pending" })
    if (salt.length > 10) {
      merge(payload, { salt: salt })
    }
    if (hashedPassword.length > 10) {
      merge(payload, { password: hashedPassword })
    }
    merge(payload, { createdBy: validUser.id })

    //
    // Update user registration

    const userUpdated = await updateUser({ target, payload })

    // return respond
    // id, email, name, requestedRole, role, isActive, regApproval, passwordChanged

    return res.status(201).json(
      merge(userUpdated, {
        passwordChanged: hashedPassword.length > 10 ? true : false,
      }),
    )
    //
  } catch (error) {
    console.log(error)
    return res.sendStatus(400)
  }
}
