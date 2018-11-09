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
    var numberOfSeats: Int = 5
    
    var typeOfCar: CarType = .Coupe
}
