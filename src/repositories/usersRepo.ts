import { PrismaClient, Prisma } from "@prisma/client"
import { enumRole } from "@prisma/client"

import { merge } from "lodash"

const prisma = new PrismaClient()
const defaultCreator: string = process.env.DEFAULT_CREATOR || "enviro-dv"
let userRole: enumRole

// FIELDS FILTER
const activeRowCriteria = {
  deleted: null,
  deletedBy: null,
}

const deletedRowCriteria = {
  deleted: { not: null },
  deletedBy: { not: null },
}

// FIELDS SELECTION
const identityFields = {
  id: true,
  email: true,
}

const infoFields = {
  name: true,
  phone: true,
}

const privilegeFields = {
  requestedRole: true,
  role: true,
  isActive: true,
  regApproval: true,
}

const credentialFields = {
  salt: true,
  password: true,
}

const metaFields = {
  createdAt: true,
  createdBy: true,
  updatedAt: true,
  updatedBy: true,
}

export const createNewUser = async (values: Record<string, any>) => {
  const {
    email,
    name,
    phone = null,
    requestedRole,
    role,
    isActive,
    salt,
    password,
    createdBy,
  } = values

  let creator: string

  if (!createdBy) {
    creator = defaultCreator
  } else {
    creator = createdBy
  }

  const user = await prisma.users.create({
    data: {
      email: email,
      name: name,
      phone: phone,
      requestedRole: requestedRole,
      role: role,
      isActive: isActive,
      regApproval: "pending",
      salt: salt,
      password: password,
      createdBy: creator,
    },
    select: {
      id: true,
      email: true,
      name: true,
      phone: true,
      requestedRole: true,
      role: true,
      isActive: true,
      regApproval: true,
    },
  })
  return user
}

export const getUsers = async () => {
  const users = await prisma.users.findMany({
    where: activeRowCriteria,
    select: merge(identityFields, infoFields, privilegeFields, metaFields),
  })
  return users
}

export const getUserExistanceByEmail = async (email: string) => {
  const user = await prisma.users.findFirst({
    where: merge({ email: email }, activeRowCriteria),
    select: identityFields,
  })
  return user
}

export const getUserAuthenticationByEmail = async (email: string) => {
  const user = await prisma.users.findFirst({
    where: merge({ email: email }, activeRowCriteria),
    select: merge(identityFields, privilegeFields, credentialFields),
  })

  return user
}

export const getUserByRefreshToken = async (refreshToken: string) => {
  // find refreshToken in Tokens table
  const foundUser = await prisma.tokens.findUnique({
    where: { refreshToken: refreshToken },
    select: { userId: true, refreshToken: true },
  })

  if (!foundUser) {
    return null
  }

  const user = await prisma.users.findFirst({
    where: merge({ id: foundUser.userId }, activeRowCriteria),
    select: identityFields,
  })

  return user
}

// CAUTION!!!
// dELETE = hard delete (delete record from table)
// delete = soft delete (mark as inactive record using isActive field)
export const dELETERefreshToken = async (userId: string) => {
  const tokensDeleted = await prisma.tokens.deleteMany({
    where: { userId: userId },
  })

  return tokensDeleted
}
