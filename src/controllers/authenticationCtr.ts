import { createUser, isEmailExists } from "db/usersTbl"
import { Request, Response } from "express"
import { random } from "helpers"

export const registerUser = async (req: Request, res: Response) => {
  try {
    // Prepare inputs.

    const { email, name, password } = req.body

    // Validate inputs.

    if (!email || !name || !password) {
      return res
        .status(400)
        .json({ message: "All mandatory fields are required." })
    }

    // Check if email already registered.

    const emailExist = await isEmailExists(email)

    if (emailExist) {
      return res.status(400).json({ message: "Email already registered." })
    }

    const salt = random()

    const userCreated = await createUser({
      email,
      name,
    })
  } catch (error) {
    console.log(error)
    return res.sendStatus(400)
  }
}

export const login = () => {}
