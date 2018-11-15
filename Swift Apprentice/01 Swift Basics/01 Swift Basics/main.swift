//
//  main.swift
//  01 Swift Basics
//
//  Created by Sinisa Abramovic on 14/11/2018.
//  Copyright © 2018 Sinisa Abramovic. All rights reserved.
//

import Foundation

// Swift primjer Tuple (visestruke vrijednosti)
// u nacelu Tuple je tip koji prezentira vise vrijednosti
let coordinates: (Int, Int) = (3, 4)

// Isto tako Tuple mozemo definirati i ovako (da imenujemo clanove)
let coordinates2 = (x: 2, y: 4)

// Ovo cu ostaviti posto je ovo svojevrsno Hello World
//print("Hello, World!")

// Lets get started
//print("\(coordinates.0), " + "\(coordinates.1)")
//print("\(coordinates2.x), " + "\(coordinates2.y)")

// Mini-exercise
let dateAverageTemperature: (Int, Int, Int, Double) = (11, 9, 2018, 34.5)

// Primjer Tuplea koji prima vise vrijednosti preko imenovanih
let dateAverageTemperature2: (day: Int, month: Int, year: Int, averageTemperature: Double) = (9, 11, 2018, 23.4)
//print(dateAverageTemperature2.day)
// primjer kada tuple vraca u deklaraciji samo odabrane vrijednosti
let (day, _, _, averageTemperature) = dateAverageTemperature2
//print(averageTemperature)


// Osnovne kontrole toka
/*
let compareDogAndCat = "cat" > "dog"

if(compareDogAndCat){
    print("Cat is greater than dog")
}else{
    print("This not make any sense")
}
 */

let closedRange = 0...5
print(closedRange)

// Random Interlude
while Int.random(in: 1...6) != 6 {
    print("Not a Six")
}

let count = 100
var sum = 0

// Nparedni for sa izrazom uvjeta
for i in 1...count where i * 2 < 10 {
    //print(i)
}

for row in 0...8 {
    if row % 2 == 0 {
        continue
    }
    
    for column in 0..<8 {
        sum += row * column
        //print(sum)
    }
}

// Switch statement

let number = 10

switch number {
case 0:
    print("Zerro")
default:
    print("Non-zero")
}


let string = "Dog"

switch string {
case "Cat", "Dog":
    print("Animal is house pet")
default:
    print("Animal is not house pet")
}

switch number {
case let x where x % 2 == 0:
    print("Even")
default:
    print("Odd")
}

var aLotOfAs = ""

while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}

print(aLotOfAs)

