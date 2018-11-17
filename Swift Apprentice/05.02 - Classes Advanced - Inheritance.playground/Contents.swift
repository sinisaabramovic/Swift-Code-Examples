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
print(dick.fullName)

