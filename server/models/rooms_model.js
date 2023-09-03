const mongoose = require('mongoose');

const roomSchema = new mongoose.Schema({
    occupancy: {
        type: Number,
        default: 2,
    },
    maxRounds:{
        type: Number,
        default: 6,
    }
    ,
    currentRound:{
        type: Number,
        default: 1,
        required: true,
    }
    
});