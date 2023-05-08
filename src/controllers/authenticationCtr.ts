import { createUser, isEmailExists } from "db/usersTbl"
import { Request, Response } from "express"
import { hashPassword, random } from "helpers"

export const registerUser = async (req: Request, res: Response) => {
  try {
    // Prepare inputs.

    const { email, name, password, requestedRole } = req.body

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

    // Create user

    //   if requested role = guest then auto activate user
    let activate: boolean = false
    if (requestedRole === "guest") {
      activate = true
    }

    const salt = random()
    const hashedPassword = hashPassword(salt, password)

    const userCreated = await createUser({
      email: email,
      name: name,
      requestedRole: requestedRole,
      role: "guest",
      isActive: activate,
      salt: salt,
      password: hashedPassword,
      createdBy: null,
    })

    // return respond
    // userCreated: {id, email, name, isActive}

    return res.status(200).json(userCreated).end()
    //
  } catch (error) {
    console.log(error)
    return res.sendStatus(400)
  }
}

export const login = () => {}
