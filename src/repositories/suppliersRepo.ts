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

export const getSupplierExistanceById = async (supplierId: string) => {
  const supplier = await prisma.suppliers.findFirst({
    where: merge({ id: supplierId }, activeRowCriteria),
    select: {
      id: true,
      alias: true,
      companyName: true,
    },
  })
  return supplier
}
