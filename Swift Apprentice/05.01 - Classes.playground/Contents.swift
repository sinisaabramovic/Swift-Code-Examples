import UIKit
import Foundation

// Primjer struktture Grade
struct Grade {
    let letter: String
    let points: Double
    let credits: Double
    let gradeName: String
}

// Primjer klase Student
class Student {
    var gender: String
    var firstName: String
    var lastName: String
    var grades: [Grade] = []
    // Computed property
    // znaci prilikom poziva izracunava se vrijednost
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // Konstruktior, svaka klasa ga mora imati!
    init(firstName: String, lasteName: String, gender: String) {
        self.firstName = firstName
        self.lastName = lasteName
        self.gender = gender
    }
    
    // Primjer metode koja ne vraca vrijednost
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
    
    // Copy constructor
    func copy(with zone: NSZone? = nil) -> Any {
        let copy = Student(firstName: self.firstName, lasteName: self.lastName, gender: self.gender)
        return copy
    }
}

// Deklaracija objekata jane, john i rick
let jane = Student(firstName: "Jane", lasteName: "Janes", gender: "Female")
var john = Student(firstName: "John", lasteName: "Nill", gender: "Male")
// Ovo nije pametno raditi
var rick: Student?

let historyGrade = Grade(letter: "B", points: 9.0, credits: 3.0, gradeName: "Math")
var mathGrade = Grade(letter: "A", points: 16.0, credits: 4.0, gradeName: "Chemistry")

rick = Student(firstName: "Rick", lasteName: "Hover", gender: "Male")
rick?.recordGrade(Grade(letter: "A", points: 12.0, credits: 5.0, gradeName: "Math"))
rick?.recordGrade(Grade(letter: "C", points: 7.0, credits: 2.0, gradeName: "Biology"))
//print(jane.firstName)
//print(john.firstName)

//john = jane.copy() as! Student

jane.recordGrade(historyGrade)
jane.recordGrade(mathGrade)

//print(jane.fullName)
//print(john.fullName)

//john.firstName = "Dick"
//print(jane.fullName)
//print(john.fullName)

// Ubacen impl (extension) :)
extension Grade {
    func showGradesData() -> String {
        let gradesData = """
        Grade: \(self.gradeName)
        Letter: \(self.letter)
        Points: \(self.points)
        Credits: \(self.credits) \n
        """
        return gradesData
    }
}

extension Student {
    var fullNameReversed: String {
        return "\(lastName) \(firstName)"
    }
    
    func showData() -> String {
        var studentData = """
        Full name: \(self.fullName)
        Gender: \(self.gender) \n
        """
        for grade in self.grades {
            studentData.append(contentsOf: grade.showGradesData())
        }
        return studentData
    }
}
//

print(jane.showData())
print(john.showData())
print(rick?.showData() ?? rick as Any)

//print(jane.fullNameReversed)
