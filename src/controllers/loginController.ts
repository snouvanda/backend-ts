import { Request, Response } from "express"
import {
  comparePassword,
  createAccessToken,
  createRefresToken,
} from "../helpers/authHelper"
import dra, { setFault } from "../helpers/faultMsgHelper" //developer recommended action after error occured.
import {
  getUserAuthenticationByEmail,
  saveRefreshToken,
} from "../repositories/usersRepo"
import { encRole } from "../config/roles_list"
import { cookieStandarOption } from "../config/cookie_option"

// LOGIN
export const handleLogin = async (req: Request, res: Response) => {
  console.log("")
  console.log("User try to login")
  const { email, password } = req.body

  // validate inputs available
  if (!email || !password) {
    let fault = setFault("Email and password are required.", dra.b2_signup_p)
    return res.status(400).json(fault)
  }

  // find user in db
  const foundUser = await getUserAuthenticationByEmail(email)
  if (!foundUser) {
    return res.sendStatus(401) //user not found
  }

  // validate password
  const match = await comparePassword(
    password,
    foundUser.salt!,
    foundUser.password,
  )
  if (!match) return res.sendStatus(401) //password not matched

  // create payload with id and encRole
  const payload = {
    userId: foundUser.id,
    role: encRole(foundUser.role),
  }

  // create accessToken and refreshToken
  const accessToken = await createAccessToken(payload)
  const refreshToken = await createRefresToken(payload)

  // save refreshToken in db
  const savedToken = await saveRefreshToken(refreshToken, foundUser.id)
  if (!savedToken) console.log("Failed to save token into db")

  // save refreshToken in cookie (jwt)
  const jwtcookie = res.cookie("jwt", refreshToken, cookieStandarOption)

  // return accessToken and role number
  return res.json({ accessToken, role: foundUser.role })
}
