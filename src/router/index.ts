import express from "express"
import home from "./homeRtr"
import authentication from "./authenticationRtr"
// import users from "./users"

const router = express.Router()

export default (): express.Router => {
  home(router)
  authentication(router)

  return router
}
