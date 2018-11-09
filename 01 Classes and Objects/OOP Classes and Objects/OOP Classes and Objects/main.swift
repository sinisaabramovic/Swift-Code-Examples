//
//  main.swift
//  OOP Classes and Objects
//
//  Created by Sinisa Abramovic on 09/11/2018.
//  Copyright © 2018 Sinisa Abramovic. All rights reserved.
//

import Foundation

let myCar = Car("Red",3,.Hatchback)
myCar.describe()

let mySecondCar = Car("Gold")
mySecondCar.describe()

let mySelfDrivingCar = SelfDrivingCar("Blue")
mySelfDrivingCar.drive()

