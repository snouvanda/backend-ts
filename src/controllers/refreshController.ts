import { Request, Response } from "express"
import {
  createAccessToken,
  createRefresToken,
  decodeRefreshToken,
} from "../helpers/authHelper"
import dra, { setFault } from "../helpers/faultMsgHelper" //developer recommended action after error occured.
import {
  dELETERefreshToken,
  dELETEAllRefreshToken,
  getUserByRefreshToken,
  saveRefreshToken,
} from "../repositories/usersRepo"
import { encRole } from "../config/roles_list"
import { cookieStandarOption } from "../config/cookie_option"

export const handleRefreshToken = async (req: Request, res: Response) => {
  const cookies = req.cookies
  if (!cookies.jwt) {
    return res.sendStatus(401) // No content
  }

  const refreshToken = cookies.jwt
  res.clearCookie("jwt", cookieStandarOption)

  // is refreshToken in db?
  console.log("finding refreshToken in db ...")
  const foundUser = await getUserByRefreshToken(refreshToken)

  if (!foundUser) {
    console.log("> not found in db.")
    const decoded = await decodeRefreshToken(refreshToken)
    if (!decoded) return res.sendStatus(403)
    const deletedTokens = await dELETEAllRefreshToken(decoded.id)
    console.log("deleted tokens:", deletedTokens)
    return res.sendStatus(403)
  }

  const decoded = await decodeRefreshToken(refreshToken)
  if (!decoded) {
    //delete this refreshToken
    const deletedToken = await dELETERefreshToken(refreshToken)
    console.log("deleted token:", deletedToken)
  }
  if (!decoded || decoded.id !== foundUser.id) {
    return res.sendStatus(403)
  }

  // create new payload with values role from db
  const payload = {
    id: foundUser.id,
    role: encRole(foundUser.role),
  }

  // create new accessToken and refreshToken
  const newAccessToken = await createAccessToken(payload)
  const newRefreshToken = await createRefresToken(payload)

  // save refreshToken in db
  const savedToken = await saveRefreshToken(newRefreshToken, foundUser.id)
  if (!savedToken) console.log("Failed to save token into db")

  // delete old refreshToken in db
  const deletedToken = await dELETERefreshToken(refreshToken)
  console.log("deleted old token:", deletedToken)

  // save refreshToken in cookie (jwt)
  const jwtcookie = res.cookie("jwt", newRefreshToken, cookieStandarOption)

  // return accessToken and role number
  return res.json({ newAccessToken, role: foundUser.role })
}
