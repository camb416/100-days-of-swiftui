// Making sure I've got this closure syntax down...

// normal function with unlabeled param
func sayHiFunc(_ name:String) -> Void {
    print("Hello, \(name)!")
}
sayHiFunc("Cameron")

// closure. Similar to JS, but brace everything and
// look out for the `in` keyword
let sayHiClosure = {(name:String) -> Void in
    print("Hi, \(name)...")
}
sayHiClosure("Cam")

// make a copy and use the param/return types
let sayHiCopy: (String)->Void = sayHiClosure
sayHiCopy("C")

// Trying it with multiple parameters
let saySupClosure = {(name:String, times:Int) -> Void in
    for _ in 1...times {
        print("Sup, \(name)")
    }
}
let saySupCopy:(String, Int)->Void = saySupClosure
saySupCopy("CDB", 3)

// Okay now do it with a Tuple. This is kinda trippy, but got it mostly on first try.
// What's kind of cool is how function parameters and Tuples have similar syntax
let createNickName = {(name: String, times:Int) -> (name:String, nickName:String) in
    var nickName = name
    for _ in 1..<times {
        nickName += name
    }
    return (name, nickName)
}
let (name, nickName) = createNickName("Cam", 5)
print("Yo, \(nickName)! Hello, \(name)")