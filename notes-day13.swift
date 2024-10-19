import Foundation

// just a couple of checks to make sure stuff exists
// and make sure Paul is not being sneaky and getting
// me on a Foundation syntax error. Sneaky devil.
let hello = "world"
print(hello.count)
print(hello.uppercased())

// protocol extensions
extension Collection{ // protocol for sets, arrays dicts
    var isNotEmpty: Bool{
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty{
    print("Guest count: \(guests.count)")
}

// Apple has POP (protocol-oriented programming)
// uh wut.
// list required protocols
// but then list default implementations of those in a protocol extension
// that way you don't need to write default implementations in all derived types

protocol Person {
    var name: String { get }
    func sayHello()
}

// all people gotta have name and sayHello

// contains default implementation
extension Person {
    func sayHello(){
        print ("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name:String
}

let taylor = Employee(name: "Taylor Swift")

taylor.sayHello()



// protocols are like contracts for code
// opaque return types let us hide some information in our code
// Extensions let us add functionality to existing types
// Protocol extensions let us add functionality to many types all at once
