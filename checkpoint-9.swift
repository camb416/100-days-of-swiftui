import Foundation

/////////
/// Okay lets do this
///
/// Write a function that accepts an optional array of ints, and returns one of those ints randomly
/// if the array is missing or empty, return a new random number in the range 1-100
///
/// write your function in a single line of code
///
/////////////

func gimmeRandom(_ arr: [Int]?) -> Int {
    let myRandomInt:Int
    if let arr = arr{
        myRandomInt = Int.random(in: 0..<arr.count)
        return arr[myRandomInt]
    }
    return Int.random(in: 1..<100)
}

func gimmeRand(_ arr: [Int]?) -> Int { return arr?.randomElement() ?? Int.random(in:1...100)  }

// tests
for _ in 1...3 {
    print("\(gimmeRand([101,102,103,104,105,106,107,108,109,110]))")
}
print("---")
for _ in 1...3 {
    print("\(gimmeRand([]))")
}
print("---")
for _ in 1...3 {
    print("\(gimmeRand(nil))")
}

// that was a little tricky, actually needed to watch the hints and do a couple googles on coalescing and optionals
