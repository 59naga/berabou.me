# Dependencies
express= require 'express'
dhs= require 'difficult-http-server'
turnout= require 'express-turnout'

# Environment
process.env.PORT?= 59798
cwd= __dirname

# Setup express
app= express()
app.use turnout()
app.use dhs {cwd}

# Boot
app.listen process.env.PORT,->
  console.log 'Server running at http://localhost:%s',process.env.PORT
