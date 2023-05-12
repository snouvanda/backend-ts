import { Request, Response } from "express"
import {
  getUserByRefreshToken,
  dELETERefreshToken,
} from "../repositories/usersRepo"

export const handleLogout = async (req: Request, res: Response) => {
  console.log("")
  console.log("User try to logout...")
  // notif for client app/FE: also delete accessToken
  // check if cookies exists
  const cookies = req.cookies
  if (!cookies.jwt) {
    console.log("cookie.jwt not found.") //LOG
    return res.sendStatus(204) // No content
  }

  // check if refreshToken exists
  const refreshToken = cookies.jwt
  if (!refreshToken) {
    console.log("refreshToken not found.") //LOG
    return res.sendStatus(204)
  } // No content
  console.log(`refreshToken: ${refreshToken}`) //LOG

  // is refreshToken in db?
  const foundUser = await getUserByRefreshToken(refreshToken)

  if (!foundUser) {
    console.log("refreshToken not found in db. (reuse detected)") //LOG
    res.clearCookie("jwt", {
      httpOnly: true,
      secure: true,
      maxAge: 24 * 60 * 60 * 1000,
    })
    console.log(`cookie.jwt: ${JSON.stringify(cookies)}`) //LOG
  }

  // delete refreshToken in db
  const deletedRT = await dELETERefreshToken(foundUser!.id)
  console.log(`refreshToken deleted ${deletedRT}`)

  // clear cookie
  res.clearCookie("jwt", {
    httpOnly: true,
    secure: true,
    maxAge: 24 * 60 * 60 * 1000,
  })
  console.log(`cookie.jwt: ${JSON.stringify(cookies)}`) //LOG

  console.log(`User ${foundUser?.email} logged out`) //LOG
  return res.sendStatus(204) // No content
}
