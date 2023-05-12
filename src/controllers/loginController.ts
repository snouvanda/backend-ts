import { Request, Response } from "express"
import {
  comparePassword,
  createAccessToken,
  createRefresToken,
} from "../helpers/authHelper"
import dra, { setFault } from "../helpers/faultMsgHelper" //developer recommended action after error occured.
import { getUserAuthByEmail } from "../db/usersData"
import { getUserAuthenticationByEmail } from "../repositories/usersRepo"
import { encRole } from "../config/roles_list"

// LOGIN
export const handleLogin = async (req: Request, res: Response) => {
  console.log("executing handleLogin ...")
  const { email, password } = req.body

  // validate inputs available
  if (!email || !password) {
    let fault = setFault("Email and password are required.", dra.b2_signup_p)
    return res.status(400).json(fault)
  }
  console.log("inputs:")
  console.log(`email: ${email}`)
  console.log(`password ${password}`)

  // find user in db
  const foundUser = await getUserAuthenticationByEmail(email)
  if (!foundUser) {
    console.log("email not found in db")
    return res.sendStatus(401) //user not found
  }
  console.log(`${email} found in db`)

  // validate password
  const match = await comparePassword(
    password,
    foundUser.salt!,
    foundUser.password,
  )
  if (!match) {
    console.log("password not matched")
    return res.sendStatus(401) //password not matched
  }
  console.log("password matched")

  // create accessToken and refreshToken
  // create payload with id and encRole
  const payload = {
    id: foundUser.id,
    role: encRole(foundUser.role),
  }
  console.log("payload: ", payload)

  const accessToken = await createAccessToken(payload)
  const refreshToken = await createRefresToken(payload)

  console.log("accessToken:", accessToken)
  console.log("refreshToken:", refreshToken)

  // save refreshToken in cookie (jwt)

  console.log("creating cookie")
  const jwtcookie = res.cookie("jwt", refreshToken, {
    httpOnly: true,
    secure: true,
    maxAge: 24 * 60 * 60 * 1000,
  })
  console.log("cookie.jwt created")

  // console.log(`cookie.jwt: ${JSON.stringify(jwtcookie)}`) //LOG

  // return accessToken
  console.log("return:", { accessToken, role: payload.role }) //LOG
  console.log("")
  return res.json({ accessToken, role: foundUser.role })
}

/* 
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
 */
