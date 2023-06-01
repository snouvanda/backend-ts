export type JWTPayload = {
  userId: string
  role: number
}

// use in config/role_list
export type RoleList = {
  [key: string]: number
}

export type LookupList = {
  [key: string]: number
}

export interface GotUser {
  id: string
  email: string
  name: string
  phone: string | null
  requestedRole: string
  role: string
  isActive: boolean
  regApproval: string
  createdAt: Date
  createdBy: string
  updatedAt: Date | null
  updatedBy: string | null
}
