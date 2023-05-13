import { findKey } from "lodash"
import { RoleList } from "../types/custom"

// this value will be use in jwt payload to disguise user role
// keys based on enumRole in db schema

export const ROLES: RoleList = {
  admin: 6515,
  customer: 2594,
  employee: 5445,
  guest: 7952,
  shipper: 3125,
  supplier: 5254,
}

export const encRole = (role: string): number => {
  return ROLES[role]
}

export const decRole = (encValue: number): string => {
  let result = ""
  Object.entries(ROLES).find(([key, value]) => {
    if (value === encValue) {
      result = key
      return true
    }
    return false
  })
  return result
}
