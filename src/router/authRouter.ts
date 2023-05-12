import express, { Request, Response } from "express"
import { registerUser } from "../controllers/registerController"
import { handleLogin } from "../controllers/loginController"
import { handleLogout } from "../controllers/logoutController"

export default (router: express.Router) => {
  router.post("/auth/register", registerUser)
  router.post("/auth/login", handleLogin)
  router.get("/auth/logout", handleLogout)
}
