import express from "express"
import home from "./homeRouter"
import authentication from "./authRouter"
import users from "./userRouter"

const router = express.Router()

export default (): express.Router => {
  home(router)
  authentication(router)
  users(router)

  return router
}
