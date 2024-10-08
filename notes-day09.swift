
///////////////////////////
// Closures...
///////////////////////////

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

// no param, omit return keyword, collapse whitespace. Bonkers.
let greeting = {()->String in "Hola!" }
print(greeting())

// oh geez you can even have something without a return type and omit the type. Yuck
let scream = { print("aaaaahhhhh") }
scream()

///////////////////////////
// Shorthand syntax...
///////////////////////////

//  I remember this from some Stackoverflow stuff I used in Checkpoint 2.
// first create some fake data...
let filteredString = "Z Q W E R T Y U I O P A S D F G H J K L Z X C V B N M"
let wordCounts = [("Q",1),("W",1),("E",2),("R",1),("T",1),("Y",1),("U",1),("I",1),("O",5),("P",1),("A",1),("S",1),("D",1),("F",1),("G",1),("H",1),("J",1),("K",1),("L",1),("Z",10),("X",1),("C",1),("V",1),("B",1),("N",1),("M",1)]

// Then here are the things I nabbed from the web (and adapted)
let wordArray:[String] = filteredString.lowercased().split(separator: " ").map { String($0) }
let sortedWordCounts = wordCounts.sorted(by: {$0.0 < $1.0}).sorted(by: {$0.1 > $1.1})
print(wordArray)
print(sortedWordCounts)
// as we can see, map makes an array of strings out of an array of substrings (not that interesting)
// and the sort is a chained function where its sorted by count, but also alphabetically.

// lets rewrite those without shorthand syntax. Map's closure accepts different types depending on context
let wordArrayAlt:[String] = filteredString.lowercased().split(separator: " ").map({(str:String.SubSequence) -> String in
    return String(str)
})
print(wordArrayAlt)

// the sorted closure will accept whatever the type of the array/set is, but has to return a bool
let sortedWordCountsAlt = wordCounts.sorted(by: {(a:(word:String,count:Int), b:(word:String, count:Int)) -> Bool in
    return a.word < b.word
} ).sorted(by: { (a:(word:String,count:Int), b:(word:String, count:Int)) -> Bool in
    return a.count > b.count
})
print(sortedWordCountsAlt)

