const express = require('express');
// const path = require('path');
const app = express();
const user = require('./user');

//app.use(express.static('public'));
app.use(express.json());
// const myMiddleware = (req,res,next)=>{
//     res.send("test")
//     console.log(Date.now());
//     next();
// }
//app.use(myMiddleware)
app.use(user);

app.get('/', function (req, res) {
    res.cookie('name', 'tobi', { domain: '.example.com', path: '/admin', secure: true })
    res.end()

  //res.send('Hello World')
  //res.sendFile(path.join(__dirname + '/index.html'));
})

 
app.listen(3000, console.log("Serveyr started on port 3000"));