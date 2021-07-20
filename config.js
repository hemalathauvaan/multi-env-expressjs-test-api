require('dotenv').config()

const config = {
  environment: process.env.NODE_ENV,
  apiDomain: process.env.APIDOMAIN
}


module.exports = config;