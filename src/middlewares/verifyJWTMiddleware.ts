import { Request, Response, NextFunction } from "express"
import { decodeAccessToken } from "../helpers/authHelper"

export const verifyJWT = async (
  req: Request,
  res: Response,
  next: NextFunction,
) => {
  // get accessToken from htttp header
  const authHeader: string | undefined = req.headers.authorization

  const str: string = ""

  if (!authHeader?.startsWith("Bearer ")) return res.sendStatus(401)

  const token = authHeader.split(" ")[1]
  //   console.log("http-header token: ", token)

  const decoded = await decodeAccessToken(token)
  console.log("decoded:", decoded)

  if (!decoded) return res.sendStatus(403)
  req.jwtPayload = decoded
  next()
}
