import Foundation
// for String.components

// A little struct practice
struct Project {
    var clientName: String = "Apple"
    var projectName: String
    var budget: Int {
        willSet{ // observer. Runs before update
            print("The budget is now \(budget)")
            print("New value will be: \(newValue)")
        }
        didSet { // observer. Runs after update
            print("The budget is now \(budget)")
            print("Old value was: \(oldValue)")
        }
    }

    func getReport() -> String {
        return "\(clientName): \(projectName). Budget is: \(budget)"
    }

    mutating func extendAWeek() {
        budget += 10_000
    }

    // computed property
    var displayName: String {
        get {
            return "\(clientName) \(projectName)"

        }
        set {
            let nameArr = newValue.components(separatedBy: " ")
            clientName = nameArr[0]
            projectName = nameArr[1]
        }
    }

    // a get-only computed property
    var reportString:String{
        return "\(clientName): \(projectName). Budget is: \(budget)"
    }




}

var p = Project(projectName: "Red Delicious", budget: 50_000)

print(p.getReport())
p.extendAWeek()
print(p.getReport())
print(p.displayName)
p.displayName = "Commodore Grannysmith"
print(p.clientName)

// p.reportString = "reporty" // you can't, it's a get-only property