require('dotenv').config()


const express = require('express');
const http = require('http');
const mongoose= require('mongoose');
const Room = require("./models/room");
const app = express();
const port = 3000 || process.env.PORT;

var server =http.createServer(app);

var io= require('socket.io')(server);//Important install socket,io@2.3.0 version

io.on('connection', (socket) => {
    console.log('a user connected');
    socket.on("createRoom",async ({nickname})=>{
      try {
        // room is created
        let room = new Room();
        let player = {
          socketID: socket.id,
          nickname,
          playerType: "X",
        };
        room.players.push(player);
        room.turn = player;
        room = await room.save();
        console.log(room);
        const roomId = room._id.toString();
  
        socket.join(roomId);
        // io -> send data to everyone
        // socket -> sending data to yourself
        io.to(roomId).emit("createRoomSuccess", room);
      } catch (e) {
        console.log(e);
      }
    })
    });

app.use(express.json());

const DB=process.env.DB
mongoose.connect(DB).then(() =>console.log("DB connection successful!")).catch(err => console.log(err));

server.listen(port, "0.0.0.0",() => {
  console.log(`Server running on port ${port}`);
});

