import UIKit
import Foundation

// U sustini klase su referentni tipovi
// Klase koriste nasljedivanje (inheritance), nadjacavanje (overriding) i polimorfizam

struct Grade {
    var letter: Character
    var points: Double
    var credits: Double
}

class Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

// ***************************************************
// Primjer nasljedivanja
// Napomena Swift omogucava samo jednostruko nasljedivanje!
class Student: Person {
    var grades: [Grade] = []
    
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
    }
    
    func recordGrade(_ grade: Grade) {
        grades.append(grade)
    }
}
// ***************************************************

let john = Student(firstName: "John", lastName: "Eastwood")
let jane = Person(firstName: "Jane", lastName: "Bush")

// ***************************************************
// Primjer klasne hijerarhije
class BandMember: Student {
    var minimumPracticeTime = 2
}

class OboePlayer: BandMember {
    override var minimumPracticeTime: Int {
        get {
            return super.minimumPracticeTime * 2
        }
        
        set {
            super.minimumPracticeTime / newValue
        }
    }
}
// ***************************************************

let dick = OboePlayer(firstName: "Dick", lastName: "Tracy")
//print(dick.fullName)

// ***************************************************
// Primjer polimorfizma

func phonebookName(_ person: Person) -> String {
    return person.fullName
}

print(phonebookName(dick))
print(phonebookName(john))
print(phonebookName(jane))

var hallMonitor = Student(firstName: "Bill", lastName: "Gates")

// Provjera hijarahije klasa
// as radi cast na odredjeni tip koji je poznat u trenutku kompajliranja
// as? radi opcionalni downcast (na sub tip), ako ne uspije rezultat ce biti nil
// as! forsirani downcast , ako ne uspije srusi program

if let hallMonitor = hallMonitor as? BandMember {
    print("This hall monitor is a band member and practices a least \(hallMonitor.minimumPracticeTime) hours per week.")
}else {
    print("This hall monitor is not a band member")
}

// Primjer da imamo dvije funkcije istog imena i istih imena parametara
// ali drugacijeg tipa parametra
func afterClassActivity(for student: Student) -> String {
    return "Goes home!"
}

func afterClassActivity(for student: BandMember) -> String {
    return "Goes to practice!"
}

print(afterClassActivity(for: dick))
print(afterClassActivity(for: dick as Student))

// U ovom primjeru SudentAthlete nadjacava recordGrade
class StudentAthlete: Student {
    var failedClasses: [Grade] = []
    
    override func recordGrade(_ grade: Grade) {
        super.recordGrade(grade)
        
        if grade.letter == "F" {
            failedClasses.append(grade)
        }
    }
    
    var isEligible: Bool {
        return failedClasses.count < 3
    }
}
