import express from 'express'
import cors from 'cors'
import dotenv from 'dotenv'
import bodyParser from 'body-parser'
import authRouter from './routes/auth'

dotenv.config()

const app = express()
const PORT = process.env.PORT || 3000

app.use(cors())
app.use(bodyParser.json())

app.get('/health', (req, res) => {
  res.json({ status: 'ok' })
})

app.use('/auth', authRouter)

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`)
})
