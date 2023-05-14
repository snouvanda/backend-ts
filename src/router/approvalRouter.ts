import express from "express"
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
  router.get(
    "/reg/approval",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAllRegApprovalRequest,
  )
  router.get(
    "/reg/approval/admins",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAdminRegApprovalRequest,
  )
  router.get(
    "/reg/approval/employees",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getEmployeeRegApprovalRequest,
  )
  router.get(
    "/reg/approval/customers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getCustomerRegApprovalRequest,
  )
  router.get(
    "/reg/approval/shippers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getShipperRegApprovalRequest,
  )
  router.get(
    "/reg/approval/suppliers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getSupplierRegApprovalRequest,
  )
  router.get(
    "/reg/approval/guests",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getGuestRegApprovalRequest,
  )

  router.post(
    "/reg/approval",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAllRegApprovalRequest,
  )
  router.post(
    "/reg/approval/admins",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getAdminRegApprovalRequest,
  )
  router.post(
    "/reg/approval/employees",
    isAuthenticated,
    authorizedTo(ROLES.admin),
    getEmployeeRegApprovalRequest,
  )
  router.post(
    "/reg/approval/customers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getCustomerRegApprovalRequest,
  )
  router.post(
    "/reg/approval/shippers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getShipperRegApprovalRequest,
  )
  router.post(
    "/reg/approval/suppliers",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getSupplierRegApprovalRequest,
  )
  router.post(
    "/reg/approval/guests",
    isAuthenticated,
    authorizedTo(ROLES.admin, ROLES.employee),
    getGuestRegApprovalRequest,
  )
}
