import Foundation
import UIKit

// Primjer koristenja struktura

struct Location {
    // X i Y su clanovi strukture
    // ujedno se x i y jos nazivaju properties strukture Location
    let x: Int
    let y: Int
}

// storeLocation je Instanca strukture Location
let storeLocation = Location(x: 0, y: 0)

// primjer druge strukture
struct DeliveryArea: CustomStringConvertible {
    let center: Location
    var radius: Double
    
    // description is computed properties
    var description: String {
        return """
        Area with center: x: \(String(describing: center.x)) - y: \(String(describing: center.y)),
        radius: \(radius)
        """
    }
    
    func distance(from source: (x: Int, y: Int),
                     to target: (x: Int, y: Int)) -> Double {
        let distanceX = Double(source.x - target.x)
        let distanceY = Double(source.y - target.y)
        return (distanceX * distanceX +
            distanceY * distanceY).squareRoot()
    }
    
    
    func contains(_ location: Location) -> Bool {
        let distanceFromCenter = distance(from: (x: center.x , y: center.y),
                                          to: (x: location.x , y: location.y))
        
        return distanceFromCenter < radius
    }
}


var area1 = DeliveryArea(center: Location(x: 3, y: 3), radius: 3)
var area2 = area1

print(area1)
print(area2)

area1.radius = 4
print(area2)
print(area1)
