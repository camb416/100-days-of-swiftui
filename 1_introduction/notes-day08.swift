// A Tuple uses round parentheses, has named props that are always there
let myTuple = (firstName: "Taylor", lastName: "Swift")
print("First Name: \(myTuple.firstName), Last Name: \(myTuple.lastName)")

// remember, you can omit return keyword
func getName() -> (firstName:String, lastName:String){
    ("Dua", "Lipa")
}
// declare and assign straight outta a tuple
var (firstName, lastName) = getName()
print("Name: \(lastName), \(firstName)")

// just assign
(firstName, lastName) = myTuple
print("Name Again: \(lastName), \(firstName)")