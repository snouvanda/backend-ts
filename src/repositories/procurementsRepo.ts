import { PrismaClient, Prisma } from "@prisma/client"
import { merge } from "lodash"

const prisma = new PrismaClient()

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

const metaFields = {
  createdAt: true,
  createdBy: true,
  updatedAt: true,
  updatedBy: true,
}

// DB MANIPULATION FUNCTIONS
