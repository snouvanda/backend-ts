import express, { Request, Response } from "express"
import {
  registerUser,
  updateRegistration,
} from "../controllers/authenticationCtr"

export default (router: express.Router) => {
  router.post("/auth/register", registerUser)
  router.patch("/auth/register", updateRegistration)
  router.post("/auth/login")
}
