import { Request, Response } from "express"
import {
  getUserRegApprovalAllRoles,
  getUserRegApprovalByRequestedRole,
} from "../repositories/usersRepo"
import { enumApproval as Approval, enumRole as Role } from "@prisma/client"

export const getAllRegApprovalRequest = async (req: Request, res: Response) => {
  const users = await getUserRegApprovalAllRoles(Approval.pending)
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getAdminRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.admin,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getEmployeeRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.employee,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getCustomerRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.customer,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getShipperRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.shipper,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getSupplierRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.supplier,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}

export const getGuestRegApprovalRequest = async (
  req: Request,
  res: Response,
) => {
  const users = await getUserRegApprovalByRequestedRole(
    Approval.pending,
    Role.guest,
  )
  if (!users) return res.sendStatus(404)

  return res.status(200).json({ users })
}
