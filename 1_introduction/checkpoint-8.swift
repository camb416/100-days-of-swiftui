// Create a protocol that describes a building
// your protocol should require
// property storing how many rooms it has
// prop for cost as int
// prop storing name of agent selling
// method for printing sales summary of building

// create two structs, House and Office that conform to it

protocol Building{
    var roomCount: Int { get }
    var cost: Int { get }
    var agent: String { get set }
    func printSummary() -> Void
}

extension Building {
    func printSummary()->Void{
        let summaryString = """
                            Building Summary
                            ---
                            Number of Rooms: \(roomCount)
                            Value: \(cost)
                            Selling Agent: \(agent)

                            """
        print(summaryString)
    }
}

struct House : Building{
    var roomCount: Int
    var cost: Int
    var agent: String
}
struct Office: Building{
    var roomCount:Int, cost:Int, agent:String // neat, this works.
}

let myHouse = House(roomCount: 1, cost: 75_000, agent: "Cleetus")
myHouse.printSummary()

let myOffice = Office(roomCount:3, cost: 200_000, agent: "Slimy Jackson")
myOffice.printSummary()