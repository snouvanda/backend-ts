import { Request, Response } from "express"
import {} from "../repositories/usersRepo"

export const getAllRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getAdminRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getEmployeeRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getCustomerRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getShipperRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getSupplierRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}

export const getGuestRegApprovalRequest = (req: Request, res: Response) => {
  return res.sendStatus(201)
}
