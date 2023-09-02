require('dotenv').config()


const express = require('express');
const http = require('http');
const mongoose= require('mongoose');

const app = express();
const port = 3000 || process.env.PORT;

var server =http.createServer(app);

var io= require('socket.io')(server);//Important install socket,io@2.3.0 version

io.on('connection', (socket) => {
    console.log('a user connected');
    socket.on("createRoom",({nickname})=>{
      console.log("sadad")
console.log(nickname)
    })
    });

app.use(express.json());

const DB=process.env.DB
mongoose.connect(DB).then(() =>console.log("DB connection successful!")).catch(err => console.log(err));

server.listen(port, "0.0.0.0",() => {
  console.log(`Server running on port ${port}`);
});

