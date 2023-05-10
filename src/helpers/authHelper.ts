import crypto from "crypto"

const secretKey: string = process.env.SECRET_KEY!

export const random = () => crypto.randomBytes(16).toString("hex")

export const hashPassword = (salt: string, password: string) => {
  return crypto.pbkdf2Sync(password, salt, 100, 32, "sha512").toString("hex")
}

export const comparePassword = async (
  salt: string,
  password: string,
  hashedPassword: string,
) => {
  if (hashPassword(salt, password) !== hashedPassword) {
    return false
  }

  return true
}
