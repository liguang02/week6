const express = require('express');
const app = express();

const mongoose = require('mongoose');
const Car = require('./models/car');

const url = 'mongodb://localhost:27017/week6DB';

mongoose.connect(url, function (err) {
    if (err === null) console.log('Connected Successfully');
    Car.findByIdAndUpdate('630c2b7f09ae0b99d9684dcd', {maker: "Pros ton", year: 2023}, function(err){
        if(err)console.log("Failed to update" + err);
    })
    //     let car = new Car({ maker: 'BMW', model: 'X6', year: 2021 });
    //     car.save(function (err) {
    //         if (err) console.log('Unable to save'+err) ;
    //         else console.log("Save Successfully");

    //     });
    
});

