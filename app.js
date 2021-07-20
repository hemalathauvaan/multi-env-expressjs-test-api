const express = require('express');
const app = express();
const port = 3000;
const config = require('./config.js');
app.use(express.json());

console.log(`Environment = ${config.environment}`);
console.log(`API Domain = ${config.apiDomain}`);

app.get('/', (req, res) => {
  res.json({ message: 'Hello Multi Env ExpressJS API!' })
});

app.get('/getEnv', (req, res) => {
  res.json({ Environment: `${config.environment}`, API_Domain: `${config.apiDomain}` })
});


app.listen( port, function() {
  console.log(`App listening on http://localhost:${port}`);
});
