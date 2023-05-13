export type JWTPayload = {
  id: string
  role: number
}

// use in config/role_list
export type RoleList = {
  [key: string]: number
}
