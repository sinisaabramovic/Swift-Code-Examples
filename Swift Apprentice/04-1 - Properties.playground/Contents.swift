import UIKit

struct TV {
    // Stored properties
    var height: Double
    var width: Double
    
    // Computed properties
    // they not store any value, they return computed value
    // Also this example is read only property
    var diaglonal: Int {
        let result = (height * height + width * width).squareRoot().rounded()
        return Int(result)
    }
    
}

var tv = TV(height: 34.5, width: 58.2)
//print(tv.diaglonal)


// Getters and Setters
// read-write computed property


// Primjer Property Observers

struct Level {
    static var highestLevel = 1
    let id: Int
    var boss: String
    var level: Int {
        return Level.highestLevel
    }
    var unlocked: Bool {
        didSet {
            if unlocked {
                print("Is unlocked")
            }
        }
    }
}

var myLevel: Level = Level(id: 1, boss: "Gandalf", unlocked: false)
myLevel.unlocked = true

print(myLevel.level)
Level.highestLevel = 4
print(myLevel.level)

