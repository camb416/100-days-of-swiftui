// exercise-1.swift
// The one where we write a program with functions to compare two strings
// Note that the swift compiler (like Javascript) is smart enough to process the functions
// at compile time so they're available, even though my calls to them are above their
// declarations in this file. Even the functions themselves are out of order and it still works.

// set up two strings to compare
let originalString = "Taylor Swift"
let secondString = "Olivia Rodrigo"

// compare results of different combinations and issue a report.
var compareResult:Bool // required to do something with the return val or we get a warning
compareResult = compareStrings(a: originalString, b: originalString, issueReport: true)
compareResult = compareStrings(a: secondString, b: secondString, issueReport: true)
compareResult = compareStrings(a: originalString, b: secondString, issueReport: true)



// compareStrings()
// compares two strings and optionally prints a report
// parameters:
// - a: first string
// - b: second string
// - issueReport (optional): whether to print a report (defaults to false)
// returns:
// - Bool (true if the strings match)
func compareStrings(a:String, b:String, issueReport:Bool = false) -> Bool {
    let setA = stringToSet(str:a)
    let setB = stringToSet(str:b)
    let result = setA == setB
    if(issueReport){
        let report = "\(a) does \(!result ? "NOT " : "")contain the same characters as \(b). \(result ? "Cool." : "Darn!")"
        print(report)
    }
    return setA == setB
}

// stringToSet()
// converts a string to a Set of Characters
// parameters:
// - str: string to convert
// Returns:
// Set<Character>
func stringToSet(str:String) -> Set<Character> {
    var lowerString = str.lowercased()
    let charactersToRemove = Set(Array(".:?, "))
    lowerString = lowerString.reduce("") {
        let str = String($1)
        return $0 + (charactersToRemove.contains($1) ? "" : str)
    }
    let lowerSortedString = lowerString.sorted()
    let stringSet = Set(lowerSortedString)
    return stringSet
}