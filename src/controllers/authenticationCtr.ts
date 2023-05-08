import {
  createUser,
  validateUserByEmail,
  isEmailExists,
  updateUser,
} from "../db/usersTbl"
import { Request, Response } from "express"
import { hashPassword, random } from "../helpers"
import { merge } from "lodash"

export const registerUser = async (req: Request, res: Response) => {
  try {
    // Prepare inputs.

    const { email, name, phone = null, password, requestedRole } = req.body

    //
    // Validate inputs.

    if (!email || !name || !requestedRole || !password) {
      return res
        .status(400)
        .json({ message: "All mandatory fields are required." })
    }

    if (requestedRole !== "guest" && phone === null) {
      return res
        .status(400)
        .json({ message: "Phone required for requested role." })
    }

    //
    // Check if email already registered.

    const emailExist = await isEmailExists(email)

    if (emailExist) {
      return res.status(400).json({ message: "Email already registered." })
    }

    //
    // Create user

    const salt = random()
    const hashedPassword = hashPassword(salt, password)

    const userCreated = await createUser({
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

    // return respond
    // userCreated: {id, email, name, isActive}

    return res.status(200).json(userCreated).end()
    //
  } catch (error) {
    console.log(error)
    return res.sendStatus(400)
  }
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

    return res.status(200).json(
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

export const login = () => {}
