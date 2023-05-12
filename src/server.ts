import express from "express"
import http from "http"
import bodyParser from "body-parser"
import cookieParser from "cookie-parser"
import compression from "compression"
import cors from "cors"
import dotenv from "dotenv"
import router from "./router"

dotenv.config()

const app = express()
const PORT = process.env.APP_PORT || 5002

app.use(cors({ credentials: true }))

app.use(compression())
app.use(cookieParser())
app.use(bodyParser.json())

const server = http.createServer(app)

server.listen(PORT, () => {
  console.log(`Server running on http://localhost:${PORT} `)
})

app.get("/", (req, res) => {
  res.send("Welcome to Soya Prima Solusi API Services")
})

app.use("/toko-soya", router())
