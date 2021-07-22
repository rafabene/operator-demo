const express = require('express')
const app = express()
const port = 3000
const os = require('os')
const version = (process.env.VERSION == undefined ? "V1" : process.env.VERSION )

let cont = 0

app.get('/health', function (req, res){
    res.json({status: 'UP'})
})


app.get('/', root)



function root (req, res, next){
    res.set('Connection', 'close')
    const headers = {};

    msg = `Hello ${version} from "${os.hostname}": ${++cont}\n`
    res.send(msg)
    next()
}
app.listen(port, () => console.log(`Hello app listening on port ${port}!`))
