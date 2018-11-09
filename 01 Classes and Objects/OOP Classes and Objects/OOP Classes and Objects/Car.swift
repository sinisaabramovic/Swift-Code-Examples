//
//  Car.swift
//  OOP Classes and Objects
//
//  Created by Sinisa Abramovic on 09/11/2018.
//  Copyright © 2018 Sinisa Abramovic. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    // variables and constants in classes is called properties
    var colour = "Black"
    var numberOfSeats: Int8 = 5
    var typeOfCar: CarType = .Coupe
    
    // initializers
    // this is a designated initializers
    init() {
    }
    
    // Optional initializer
    convenience init(_ customerChosenColour: String) {
        self.init()
        self.colour = customerChosenColour
    }
    
    convenience init(_ customerChosenColour: String, _ chosenNumberOfSeats: Int8) {
        self.init(customerChosenColour)
        self.numberOfSeats = chosenNumberOfSeats
    }
    
    convenience init(_ customerChosenColour: String, _ chosenNumberOfSeats: Int8, _ chosenType: CarType) {
        self.init(customerChosenColour, chosenNumberOfSeats)
        self.typeOfCar = chosenType
    }
    
    func describe() {
        print("\n\(colour)")
        print(numberOfSeats)
        print("\(typeOfCar)")
    }
    
    func drive() {
        print("Car is moving")
    }
}
