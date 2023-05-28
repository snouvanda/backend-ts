import { merge } from "lodash"
// import { enumRole } from "@prisma/client"
import { UserRole } from "../enums/dbEnums"
import dra, { setFault } from "./faultMsgHelper" //developer recommended action after error occured.

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
