import { merge } from "lodash"
// import { enumRole } from "@prisma/client"
import dra, { setFault } from "./faultMsgHelper" //developer recommended action after error occured.
import {
  DbEnumLookupValidation,
  ProcurementInput,
  ProductLookupValidation,
  StockAccountLookupValidation,
  SupplierLookupValidation,
} from "../types/custom"
import {
  PaymentMethod,
  PaymentStatus,
  ProcurementTrx,
  ShipmentLoadStatus,
  UserRole,
} from "../enums/dbEnums"
import { getSupplierExistanceById } from "../repositories/suppliersRepo"
import { getProductExistanceById } from "../repositories/productsRepo"
import { getStockAccountExistanceById } from "../repositories/stockAccountsRepo"

export const isEmailValid = (email: string) => {
  // TODO: find method to validate email string
  const validEmail = email
  return true
}

export const isNameValid = (name: string) => {
  if (name.length < 2) {
    return false
  }
  return true
}

export const isRoleValid = async (role: string) => {
  // if (Object.values(enumRole).includes(role as enumRole)) {
  if (role in UserRole) {
    return true
  }

  return false
}

export const isPasswordValid = (password: string) => {
  if (password.length < 8) {
    return false
  }
  return true
}

//
// Return {valid: true} if valid.
//
// If invalid, return:
// {faults:{
//          [faultElement1]:{message: "", msg2Dev: ""},
//          [faultElement2]:{message: "", msg2Dev: ""}
//         }}
//

export const isRegistrationInputsValid = async (
  email: string,
  name: string,
  password: string,
  requestedRole: string,
  phone: string | undefined,
) => {
  let faults = {}
  if (!isEmailValid(email)) {
    merge(faults, {
      email: setFault("Invalid email address", dra.b2_email_entry),
    })
  }

  if (!isNameValid(name)) {
    merge(faults, {
      name: setFault("Name minimum length is 3.", dra.b2_name_entry),
    })
  }

  if (!isPasswordValid(password)) {
    merge(faults, {
      password: setFault(
        "Password minimum length is 8 characters.",
        dra.b2_pwd_entry,
      ),
    })
  }

  if (!(await isRoleValid(requestedRole))) {
    merge(faults, {
      requestedRole: setFault("Role is invalid.", dra.b2_signup_p),
    })
  }

  if (requestedRole !== "guest" && phone === undefined) {
    merge(faults, {
      phone: setFault(
        "Phone is required for requested role. Minimum length is 6 characters",
        dra.b2_signup_p,
      ),
    })
  } else if (requestedRole !== "guest" && phone!.length < 5) {
    merge(faults, {
      phone: setFault("Phone minimum length is 6 characters", dra.b2_signup_p),
    })
  }

  // if has not any fault
  if ((await Object.keys(faults).length) === 0) {
    faults = { valid: true }
    return faults
  }

  // if has any fault
  return { faults }
}

export const isSupplierIdValid = async (
  supplierId: string,
): Promise<SupplierLookupValidation> => {
  const supplier = await getSupplierExistanceById(supplierId)

  if (supplier) {
    return {
      validation: true,
      supplierId: supplier.id,
      alias: supplier.alias,
      companyName: supplier.companyName,
    }
  }
  return {
    validation: false,
    supplierId: "",
    alias: "",
    companyName: "",
  }
}

export const isProductIdValid = async (
  productId: number,
): Promise<ProductLookupValidation> => {
  const product = await getProductExistanceById(productId)

  if (product) {
    return {
      validation: true,
      productId: product.id,
      alias: product.alias,
      name: product.name,
    }
  }
  return {
    validation: false,
    productId: 0,
    alias: "",
    name: "",
  }
}

export const isStockAccountValid = async (
  accountId: number,
): Promise<StockAccountLookupValidation> => {
  const account = await getStockAccountExistanceById(accountId)

  if (account) {
    return {
      validation: true,
      accountId: account.id,
      account: account.account,
    }
  }
  return {
    validation: false,
    accountId: 0,
    account: "",
  }
}

export const isProcurementTrxValid = (
  transaction: number | string,
): DbEnumLookupValidation => {
  if (typeof transaction === "number") {
    if (transaction in ProcurementTrx) {
      return {
        validation: true,
        dbValue: transaction,
        appValue: "",
      }
    }
  } else if (typeof transaction === "string") {
    if (transaction in ProcurementTrx) {
      return {
        validation: true,
        dbValue: 1,
        appValue: transaction,
      }
    }
  }
  return {
    validation: false,
    dbValue: -1,
    appValue: "",
  }
}

// export const isStockAccountValid = (
//   account: number | string,
// ): DbEnumLookupValidation => {
//   if (typeof account === "number") {
//     if (account in StockAccount) {
//       return {
//         validation: true,
//         dbValue: account,
//         appValue: "",
//       }
//     }
//   } else if (typeof account === "string") {
//     if (account in StockAccount) {
//       return {
//         validation: true,
//         dbValue: 1,
//         appValue: account,
//       }
//     }
//   }
//   return {
//     validation: false,
//     dbValue: -1,
//     appValue: "",
//   }
// }

export const isShipmentLoadStatusValid = (
  loadStatus: number | string,
): DbEnumLookupValidation => {
  if (typeof loadStatus === "number") {
    if (loadStatus in ShipmentLoadStatus) {
      return {
        validation: true,
        dbValue: loadStatus,
        appValue: "",
      }
    }
  } else if (typeof loadStatus === "string") {
    if (loadStatus in ShipmentLoadStatus) {
      return {
        validation: true,
        dbValue: 1,
        appValue: loadStatus,
      }
    }
  }
  return {
    validation: false,
    dbValue: -1,
    appValue: "",
  }
}

export const isPaymentStatusValid = (
  paymentStatus: number | string,
): DbEnumLookupValidation => {
  if (typeof paymentStatus === "number") {
    if (paymentStatus in PaymentStatus) {
      return {
        validation: true,
        dbValue: paymentStatus,
        appValue: "",
      }
    }
  } else if (typeof paymentStatus === "string") {
    if (paymentStatus in PaymentStatus) {
      return {
        validation: true,
        dbValue: 1,
        appValue: paymentStatus,
      }
    }
  }
  return {
    validation: false,
    dbValue: -1,
    appValue: "",
  }
}

export const isPaidMethodValid = (
  paidMethod: number | string,
): DbEnumLookupValidation => {
  if (typeof paidMethod === "number") {
    if (paidMethod in PaymentMethod) {
      return {
        validation: true,
        dbValue: paidMethod,
        appValue: "",
      }
    }
  } else if (typeof paidMethod === "string") {
    if (paidMethod in PaymentMethod) {
      return {
        validation: true,
        dbValue: 1,
        appValue: paidMethod,
      }
    }
  }
  return {
    validation: false,
    dbValue: -1,
    appValue: "",
  }
}

export const isNumberInputValid = (value: any) => {
  if (typeof value === "number") {
    return {
      validation: true,
      value: value,
    }
    return {
      validation: false,
      value: null,
    }
  }
}

export const isDateInputValid = (date: string) => {
  // TODO: how to validate date value
  return {
    validation: true,
    date: date,
  }
}

export const isProcurementInputsValid = async (inputs: ProcurementInput) => {
  let inputsValidation = {
    validation: false,
    message: "",
  }

  const input: ProcurementInput = inputs

  const validDate = isDateInputValid(input.trxDate)
  if (!validDate) {
    inputsValidation.message = "Input is invalid: trxDate"
    return inputsValidation
  }

  const validSupplier = await isSupplierIdValid(input.supplierId)
  if (!validSupplier) {
    inputsValidation.message = "Input is invalid: supplierId"
    return inputsValidation
  }

  const validTransaction = isProcurementTrxValid(input.transaction)
  if (!validTransaction.validation) {
    inputsValidation.message = "Input is invalid: transaction"
    return inputsValidation
  }

  const validProduct = await isProductIdValid(input.productId)
  if (!validProduct) {
    inputsValidation.message = "Input is invalid: productId"
    return inputsValidation
  }

  const validQuantity = isNumberInputValid(input.quantity)
  if (!validQuantity) {
    inputsValidation.message = "Input is invalid: quantity"
    return inputsValidation
  }

  const validUnitPrice = isNumberInputValid(input.unitPrice)
  if (!validUnitPrice) {
    inputsValidation.message = "Input is invalid: unitPrice"
    return inputsValidation
  }

  const validAccount = await isStockAccountValid(input.account)
  if (!validAccount.validation) {
    inputsValidation.message = "Input is invalid: account"
    return inputsValidation
  }

  const validLoadStatus = isShipmentLoadStatusValid(input.loadStatus)
  if (!validLoadStatus.validation) {
    inputsValidation.message = "Input is invalid: loadStatus"
    return inputsValidation
  }

  const validPaymentStatus = isPaymentStatusValid(input.paymentStatus)
  if (!validPaymentStatus.validation) {
    inputsValidation.message = "Input is invalid: paymentStatus"
    return inputsValidation
  }

  const validPaidAmount = isNumberInputValid(input.paidAmount)
  if (!validPaidAmount) {
    inputsValidation.message = "Input is invalid: paidAmount"
    return inputsValidation
  }

  const validPaidMethod = isPaidMethodValid(input.paidMethod)
  if (!validPaidMethod.validation) {
    inputsValidation.message = "Input is invalid: paidMethod"
    return inputsValidation
  }

  const validPaidAmtBank = isNumberInputValid(input.paidAmtBank)
  if (!validPaidAmtBank) {
    inputsValidation.message = "Input is invalid: paidAmtBank"
    return inputsValidation
  }

  const validPaidAmtCash = isNumberInputValid(input.paidAmtCash)
  if (!validPaidAmtCash) {
    inputsValidation.message = "Input is invalid: paidAmtCash"
    return inputsValidation
  }

  const validPaidAmtAccRcv = isNumberInputValid(input.paidAmtAccRcv)
  if (!validPaidAmtAccRcv) {
    inputsValidation.message = "Input is invalid: paidAmtAccRcv"
    return inputsValidation
  }

  inputsValidation.validation = true
  inputsValidation.message = "inputs are valid"
  return inputsValidation
}
