
// big long string to use to create the array
// the below code strips out the punctuation and creates
// a string without punctuation.
let paragraph:String = "In the quest for advancement, every step you take matters. Whether it's a breakthrough in technology, a new discovery in science, or a simple act of kindness, each action contributes to the greater good. It's essential to stay curious, keep learning, and never underestimate the power of small achievements. Remember, the journey is just as important as the destination."
let charactersToRemove = Set(Array(".:?,"))
let filteredString = paragraph.reduce("") {
    let str = String($1)
    return $0 + (charactersToRemove.contains($1) ? "" : str)
}

// note the .map on the end (Not part of the lessons yet)
// This is needed because the .split method returns an array of
// substrings, not strings.
// Substrings (Also not described in the lessons yet)
// are references to the bytes in a String variable, making them
// more compact
let wordArray:[String] = filteredString.lowercased().split(separator: " ").map { String($0) }

// Create a set using the word arry in the constructor
// any dupes will be discarded
let wordSet:Set<String> = Set(wordArray)

// Print the paragraph, the word counts with separators
print(paragraph)
print("---")
print("Of the \(wordArray.count) words in the paragraph, \(wordSet.count) are unique.")
print("---")
// Create a dictionary of word counts
// note the filter, which counts occurrences in the array
var wordCounts:[String:Int] = [:]
for w in wordSet.sorted(){
    wordCounts[w] = wordArray.filter{$0 == w}.count
}

// Sort the dictionary by occurrences, then by key (word)
let sortedWordCounts = wordCounts.sorted(by: {$0.0 < $1.0}).sorted(by: {$0.1 > $1.1})

// Print a report of found words
for w in sortedWordCounts{
    if(w.value>1){
        print("\(w.key): (\(w.value) ocurrences)")
    }
}
