import express, { Request, Response } from "express"
import { verifyJWT } from "../middlewares/verifyJWTMiddleware"
import { getAllUsers } from "../controllers/usersController"

export default (router: express.Router) => {
  router.get("/users", verifyJWT, getAllUsers)
}
