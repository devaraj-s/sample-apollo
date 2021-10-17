const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => {
  res.send('Hello GitOps World with Faragate ECS Sentry Demo:) !!!')
})

//process.on('SIGTERM', () => {
  //debug('SIGTERM signal received: closing HTTP server')
  //server.close(() => {
    //debug('HTTP server closed')
      //process.exit(0)
  //})
//})

const server = app.listen(port, () => {
  console.log(`Example app listening at - http://localhost:${port}`)
})


