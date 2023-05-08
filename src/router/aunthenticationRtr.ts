import express from "express"
import { registerUser } from "../controllers/authenticationCtr"

export default (router: express.Router) => {
  router.post("/auth/register", registerUser)
  router.post("/auth/login")
}
