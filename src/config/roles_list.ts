import { findKey } from "lodash"
// this value will be use in jwt payload to disguise user role
// keys based on enumRole in db schema

interface RoleList {
  [key: string]: number
}

export const ROLES_LIST: RoleList = {
  admin: 6515,
  customer: 2594,
  employee: 5445,
  guest: 7952,
  shipper: 3125,
  supplier: 5254,
}

export const encRole = (role: string): number => {
  return ROLES_LIST[role]
}

export const decRole = (encValue: number): string => {
  let result = ""
  Object.entries(ROLES_LIST).find(([key, value]) => {
    if (value === encValue) {
      result = key
      return true
    }
    return false
  })
  return result
}
