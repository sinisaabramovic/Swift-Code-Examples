//
//  SelfDrivingCar.swift
//  OOP Classes and Objects
//
//  Created by Sinisa Abramovic on 09/11/2018.
//  Copyright © 2018 Sinisa Abramovic. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    
    // var name data type and ? explain that this can contain null values
    var destination: String?
    
    override func drive() {
        super.drive()
        
        // Optional binding
        if let userSetDestionation = destination {
            print("Im driving overide " + userSetDestionation)
        }
       
    }
}
