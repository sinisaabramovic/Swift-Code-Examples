import UIKit
import Foundation

class Person {
    private var name: String? = "" {
        didSet {
            print("\(String(describing: name!)) is set")
        }
    }
    var firstName: String {
        set {
            print("\(newValue) Seted")
            name = newValue
        }
        
        get {
            return name!
        }
    }
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.name = firstName
        self.lastName = lastName
    }
    
    var fullName: String {
        return "\(self.firstName) \(self.lastName)"
    }
}

let john = Person(firstName: "John", lastName: "Gates")

// Varijable se za razliku od struktura istanciraju u stacku ali referencu na objekt drze na heapu
var homeOwner = john
john.firstName = "Lin"
print(homeOwner.firstName)
homeOwner.firstName = "Nik"
print(homeOwner.firstName)
print(john.firstName)
