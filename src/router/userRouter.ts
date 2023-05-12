import express, { Request, Response } from "express"
import { isAuthenticated } from "../middlewares/aunthenticatorMW"
import { isAuthorized } from "../middlewares/authorizerMW"
import { getAllUsers } from "../controllers/usersController"

export default (router: express.Router) => {
  router.get("/users", isAuthenticated, isAuthorized, getAllUsers)
}
