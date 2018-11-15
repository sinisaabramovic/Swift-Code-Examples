import UIKit

var str = "Hello, playground"

// Primjer funkcije koja prima jedan parametar
func printMyName(name: String) {
    print("My name is \(name)")
}

// Primjer poziva funkcije i prosljedivanja parametra
printMyName(name: "Sinisa")

// Primjer deklaracije funkcije sa dva parametra
func printMultipleOf(multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}

// poziv funkcije printMultipleOf i prosljedivanje argumenata 4 i 2
printMultipleOf(multiplier: 4, andValue: 2)

// Primjer deklaracije funkcije bez imenovanja externalnih parametara znak _ definira
func printMultipleOfEx(_ multiplier: Int, _ andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}

// Primjer poziva funkcije i prosljedjivanje parametara bez deklaracije externalnih parametara
printMultipleOfEx(3, 1)

// Funkcijskim parametrima isto tako mozemo dodijeliti defaultne vrijednosti
func printMultipleOFEx2(_ multiplier: Int, _ addValue: Int = 1) {
    print("\(multiplier) * \(addValue) = \(multiplier * addValue)")
}

// Primjer poziva funkcije sa prosljedivanjem dva argumenta
printMultipleOFEx2(12, 2)
// primjer poziva funcije sa prosljedivanjem jednog parametra
printMultipleOFEx2(12)


// Primjer funkcije koja bvraca vrijednost

func multiplay(_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}

let multiplied = multiplay(12, by: 2)

// isto tako funkcija moze vratiti vise vrijednosti (vidi Tuple)
func multiplayAndDevide(_ number: Int, by factor: Int = 1) -> (product: Int, quotient: Int) {
    return (number * factor, number / factor)
}

let result = multiplayAndDevide(145, by: 14)
let multiple = result.product
let quatient = result.quotient

// Svi gornji primjeriu koriste parametre po vrijednosti sto znaci da se radi kopija

// Primjer slanja po refrenci
func incrementalAndPrint(_ value: inout Int) {
    value += 1
}

var someValue = 1

for _ in 0...10 {
    incrementalAndPrint(&someValue)
}

print(someValue)

// Mini exercise
func printFullName(_ firstName: String, _ lastName: String) ->(fullName: String, fullNameLength: Int) {
    let _fullName: String = firstName + lastName
    return ("\(firstName) \(lastName)", _fullName.count)
}

let getFullName = printFullName("Sinisa", "Abramovic")
print("\(getFullName.fullName) is length of \(getFullName.fullNameLength)")
//printFullName(firstName: "Sinisa", lastName: "Abramovic")


// Funkcje kao varijable
// deklaracija funkcije add sa dva parametra
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}
// dodijeljivanje funkcije varijabli
var function = add

print(function(12, 12))

func substract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

function = substract

print(function(10, 2))
