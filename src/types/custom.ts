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
