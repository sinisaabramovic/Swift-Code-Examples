import UIKit

// Konstante i varijable se moraju deklarirati prije upotrebe
// Konstante se deklariraju kljucnm rijecju let a varijable kljucnom rijecju var

// Primjer deklaracije konstante i dodiljeljivanje vrijednosti 10
let maximumNumberofLoginAttempts = 10
// Deklaracija varijable i dodjela vrijednosti 0
var currentLoginAttempt = 0

// primjer visetruke deklaracije varijable u jednoj liniji
var x = 0.0, y = 0.0, z = 0.0
// Napomena za vriednosti koje se nece mijenjati kroz kod preporuka je koristiti konstante
// Koristenje varijabli samo u slucaju kada se vrijednosti trebaju mjenjati

// Primjer navodjenja tipa prilikom deklaracije varijable
var welcomeSessage: String?
// : znaci tip tako da primjer koda bi glasio
// Deklariraj varijablu imena welcomMessage koja je tipa String

welcomeSessage = "Hello world"
// varijabla welcomMessage sada moze primiti bilo koju vrijednost String

// Mogu se definirati visetruke relacije varijabli istog tipa u jenoj liniji na primjer
var red, green, blue: Double?

// Type Aliases
// definiraju alternativno ime za postojeci tip
// a definira se koristenjem kljucne rijeci typealias

// Type aliases su korisni kada zelimo referencirati postojeci tip po imenu

typealias AudioSample = UInt16
// Jednom kaad definiramo type alias mozemo isti koristi drugdje (bilo gdje)
var maxAmplitudeFound = AudioSample.min
print(maxAmplitudeFound)

// PRIMJER Tuples
// Tuples grupira vise vrijednostu u jednu gruporanu (zbrojenu) vrijednost
// Primjer (404, "Not Found")
// je Tuple koji opisuje HTTP stats kod
let http404Error = (404, "Not Found")
// primjer grupira Int i String
print(http404Error)
// isto primjer
let (statusCode, statusMessgae) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessgae)")

// Ako trebamo samo jedan dio tuple vrijednosti onda to mozemo napraviti
// ignorirajuci ostalo prem primjeru

let (justTheStatusCode, _) = http404Error
print("The status code is: \(justTheStatusCode)")

// Uz to tuple vrijednosti mozemo dohvatiti i prema indexu
print("The status code is: \(http404Error.0)")
print("The status message is: \(http404Error.1)")

// Isto elementi se mogu individualno nazivati prilikom definicije tuplea
let http200Status = (statusCode: 200, description: "OK")

print("The status code is: \(http200Status.statusCode)")
print("The message code is: \(http200Status.description)")

// Tuple su korisni kao povrati funkcija


// OPTIONALS
// Opcionalne vrijednosti
// Uglavnom prikazuju dvije mogucnosti
// Da li vrijednost postoji ili ne postoji

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404

serverResponseCode = nil

//ili
var surveyAnswer: String?
// u ovom primjeru surveyAnswer ce biti postavljen na nil

// Error Handling
// Upravljanje sa greskama kada program prilikom izvodjenja naleti na neku gresku

// Assertions and Preconditions
// provjere prilikom izvodjenaj
// mogu se koristiti da budemo sigurni da esecnijalni uvjeti budu zadovoljeni prije nego sto ce se ostatak kod dalje izvrsavati

// primjer
let age = 3
assert(age >= 0, "A person age cnat be less than zero.")
// U ovom primjeru izvrtsavanje koda ce se nastaviti ako age >= 0 postane true
