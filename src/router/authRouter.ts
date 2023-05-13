import express, { Request, Response } from "express"
import { registerUser } from "../controllers/registerController"
import { handleLogin } from "../controllers/loginController"
import { handleLogout } from "../controllers/logoutController"
import { handleRefreshToken } from "../controllers/refreshController"
import { isAuthenticated } from "../middlewares/aunthenticatorMW"
import { authorizedTo } from "../middlewares/authorizerMW"
import { ROLES } from "../config/roles_list"
import {
  getAllRegApprovalRequest,
  getAdminRegApprovalRequest,
  getEmployeeRegApprovalRequest,
  getCustomerRegApprovalRequest,
  getShipperRegApprovalRequest,
  getSupplierRegApprovalRequest,
  getGuestRegApprovalRequest,
} from "../controllers/approvalController"

export default (router: express.Router) => {
  router.post("/auth/register", registerUser)
  router.post("/auth/login", handleLogin)
  router.get("/auth/refresh", handleRefreshToken)
  router.get("/auth/logout", handleLogout)
  router.get(
    "/auth/approval",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAllRegApprovalRequest,
  )
  router.get(
    "/auth/approval/admins",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAdminRegApprovalRequest,
  )
  router.get(
    "/auth/approval/employees",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getEmployeeRegApprovalRequest,
  )
  router.get(
    "/auth/approval/customers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getCustomerRegApprovalRequest,
  )
  router.get(
    "/auth/approval/shippers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getShipperRegApprovalRequest,
  )
  router.get(
    "/auth/approval/suppliers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getSupplierRegApprovalRequest,
  )
  router.get(
    "/auth/approval/guest",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getGuestRegApprovalRequest,
  )
}
