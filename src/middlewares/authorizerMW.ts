import { Request, Response, NextFunction } from "express"

export const isAuthorized = async (
  req: Request,
  res: Response,
  next: NextFunction,
) => {
  console.log("authorized")
  return next()
}
