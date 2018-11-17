import UIKit

// Primjer immutable polja
let evenNumbers = [2, 4, 6, 8]

// Primjer praznog string polja
var subscribers: [String] = []

subscribers.append("Drek")
subscribers += ["Kok"]
subscribers += ["Konj", "Franc", "Mark", "Bill"]
subscribers.append("Nik")
subscribers.append("John")
subscribers.append("Kino")
if subscribers.isEmpty {
    print("Empty array")
}else {
    print("Not empted array")
    for arrayElement in subscribers {
        print("\(arrayElement)")
    }
    
    print("First element in array is: \(subscribers.first!)")
    print("Last element in array is: \(subscribers.last!)")
}

subscribers.swapAt(2, 5)
print(subscribers.index(of: "Konj")!)
subscribers.sort()
print(subscribers.index(of: "Konj")!)
subscribers.remove(at: 4)

print(subscribers)


// Primjer Dictionary-a Rijecnika
// Rijecnici rade po principu key - value
// Primjer deklaracije praznog rijecnika
var pairs: [String: Int] = [:]

// Dobra praksa za ocuvanje performansi ukoliko ne znamo koliko ce nam na pocetku prostora trebati
pairs.reserveCapacity(40)
pairs["Drek"] = 2
pairs["Konj"] = 12
pairs["Dog"] = 4
pairs["Mona"] = 4

pairs.updateValue(4, forKey: "Drek")
print(pairs["Konj"]!)

for (key, value) in pairs {
    print("\(key) :\(value)")
}
