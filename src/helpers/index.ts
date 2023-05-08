import crypto from "crypto"

const secretKey = process.env.SECRET_KEY!

export const random = () => crypto.randomBytes(128).toString("base64")

export const hashPassword = (salt: string, plainPassword: string) => {
  return crypto
    .createHmac("sha256", [salt, plainPassword].join("/"))
    .update(secretKey)
    .digest("hex")
}
