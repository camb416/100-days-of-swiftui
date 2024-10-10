//////////////////
/// Checkpoint 6
///
/// Create a struct to store information about a car
/// Include:
///
/// - Its model
/// - Number of Seats
/// - Current Gear
///
/// Add a method to change gears up or down
/// Have a think about variables and access control
/// Don't allow invalid gears. Allow gears 1-10
///////////////////

struct Car {
    static var carsProduced: Int = 0
    let model: String
    let numberOfSeats: Int
    private var currentGear: Int {
        didSet{
            print("Changed gear to \(currentGear)")
        }
    }
    let lowGear = 1
    let highGear = 10

    mutating func setGear(to destinationGear:Int) -> Bool {
        if(destinationGear<lowGear || destinationGear>highGear){
            print("No such gear.")
            return false
        } else {
            currentGear = destinationGear
            return true
        }
    }

    init(model:String, numberOfSeats:Int){
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = 1
        Self.carsProduced+=1
    }

    func checkOut() -> Void {
        print("This is a \(numberOfSeats)-seater \(model). It's currently in \(currentGear)th gear.")
    }
    static func annualReport() -> Void {
        print("There are \(Self.carsProduced) cars on the road.")
    }

}

var ford = Car(model: "Mustang", numberOfSeats: 2)
var secondFord = Car(model: "LTD", numberOfSeats: 4)
var chevy = Car(model: "Bolt", numberOfSeats: 4)

var didGearShift:Bool
didGearShift = ford.setGear(to: 2)
didGearShift = ford.setGear(to: 11)

ford.checkOut()

Car.annualReport()

