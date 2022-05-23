//
// VehicleInventory.swift
//
// Created by Ina Tolo
// Created on 2022-5-16
// Version 1.0
// Copyright (c) 2022 Ina Tolo. All rights reserved.
//
// The VehicleInventory program implements an application
// that creates two vehicles and calls separate classes
// to properly print the information and alter the speed.

class Vehicle {
    // properties
    var plateNum: String
    var colour: String
    var doorNum: Int
    var seatNum: Int
    var length: Int
    var speed: Int
    var maxSpeed: Int

    init(plateNum: String, colour: String, doorNum: Int, speed: Int, maxSpeed: Int) {
        // referncing objects passed in
        self.plateNum = plateNum
        self.colour = colour
        self.doorNum = doorNum
        self.seatNum = seatNum
        self.length = length
        self.speed = speed
        self.maxSpeed = maxSpeed
    }

    // adds acceleration to the current speed
    internal func accelerate(accelNum: Int) {
        // adds acceleration
        let newSpeed: Int = speed + accelNum
        speed = newSpeed

        // checks if speed is greater than max speed
        if speed > maxSpeed {
            speed = maxSpeed
        }

        print("Vehicle has accelerated \(accelNum) km/h.")
    }

    // alters the speed by applying brakes
    internal func brake(brakeNum: Int) {
        // decreases amount of current speed
        let newSpeed: Int = speed - brakeNum
        speed = newSpeed

        // checks to make sure speed is not negative
        if speed < 0 {
            speed = 0
        }

        print("A brake of \(brakeNum) km/h has been applied.")
    }

    // tells the user the current speed
    internal func getSpeed() {
        print("Current speed: \(speed) km/h")
    }

    // tells the user what the max speed of a vehicle is
    internal func getMaxSpeed() {
        print("Max speed: \(maxSpeed) km/h")
    }

    // tells user information and characteristics about a vehicle
    internal func getInfo() {
        // applies appropriate format for information
        print("License plate: \(plateNum)")
        print("Colour: \(colour)")
        print("Number of doors: \(doorNum)")
        print("Number of seats: \(seatNum)")
        print("Length: \(length)")
        print("Speed: \(speed) km/h")
        print("Max speed: \(maxSpeed) km/h")
    }
}

class Truck: Vehicle {
    // properties
    private var wheelNum: Int
    private var plateNum: String
    private var doorNum: Int

    init(plateNum: String, colour: String, doorNum: Int, wheelNum: Int, seatNum: Int, length: Int, speed: Int, maxSpeed: Int)
    
}

class Bike: Vehicle {
    
}

class Plane: Vehicle {
    
}

class Boat: Vehicle {
    
}

// creating vehicles
var myTruck = Truck(plateNum: "BBV 4389", colour: "Navy Blue", doorNum: 4, wheelNum: 22, seatNum: 2, length: 19, speed: 0, maxSpeed: 85)
var myBike = Bike(colour: "Purple", wheelNum: 3, seatNum: 2, length: 8, speed: 0, maxSpeed: 55)
var myPlane = Plane(tailNum: "C-MEX", colour: "White", doorNum: 6, wheelNum: 16, seatNum: 52, length: 120, speed: 0, maxSpeed: 1300)
var myBoat = Boat(colour: "Beige", seatNum: 4, length: 12, speed: 0, maxSpeed: 5)

// declaring variables
var listOfVehicles: [Vehicle] = []

// adds vehicles to array
listOfVehicles.append(myTruck)
listOfVehicles.append(myBike)
listOfVehicles.append(myPlane)
listOfVehicles.append(myBoat)

// calls appropriate methods for truck one
print("Adjustments for Truck One:")
listOfVehicles[0].getMaxSpeed()
listOfVehicles[0].accelerate(accelNum: 34)
listOfVehicles[0].accelerate(accelNum: 22)
listOfVehicles[0].getSpeed()
listOfVehicles[0].brake(brakeNum: 13)
listOfVehicles[0].accelerate(accelNum: 5)
listOfVehicles[0].brake(brakeNum: 10)
listOfVehicles[0].getSpeed()

print()
print("Truck #1 Information:")

// calls method in vehicle class to print info
listOfVehicles[0].getInfo()

print()
print("Adjustments for Bike One:")

// calls appropriate methods for bike one
listOfVehicles[1].getMaxSpeed()
listOfVehicles[1].brake(brakeNum: 4)
listOfVehicles[1].accelerate(accelNum: 23)
listOfVehicles[1].brake(brakeNum: 11)
listOfVehicles[1].getSpeed()
listOfVehicles[1].accelerate(accelNum: 19)
listOfVehicles[1].getSpeed()
listOfVehicles[1].brake(brakeNum: 8)
print()
print("Bike #1 Information:")

// calls method in vehicle class to print info
listOfVehicles[1].getInfo()

print()
print("Adjustments for Plane One:")

// calls appropriate methods for plane one
listOfVehicles[2].getMaxSpeed()
listOfVehicles[2].accelerate(accelNum: 290)
listOfVehicles[2].brake(brakeNum: 130)
listOfVehicles[2].accelerate(accelNum: 345)
listOfVehicles[2].brake(brakeNum: 55)
listOfVehicles[2].getSpeed()
listOfVehicles[2].accelerate(accelNum: 110)
listOfVehicles[2].getSpeed()
listOfVehicles[2].accelerate(accelNum: 345)

print()
print("Plane #1:")

// calls method in vehicle class to print info
listOfVehicles[1].getInfo()

print()
print("Adjustments for Boat One:")

// calls appropriate methods for boat one
listOfVehicles[3].getMaxSpeed()
listOfVehicles[3].accelerate(accelNum: 2)
listOfVehicles[3].brake(brakeNum: 1)
listOfVehicles[3].getSpeed()
listOfVehicles[3].accelerate(accelNum: 2)
listOfVehicles[3].brake(brakeNum: 2)
listOfVehicles[3].getSpeed()
listOfVehicles[3].accelerate(accelNum: 3)

print()
print("Boat #1:")

// calls method in vehicle class to print info
listOfVehicles[1].getInfo()