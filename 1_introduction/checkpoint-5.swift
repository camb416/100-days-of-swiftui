// 1. Use this data
let luckyNumbers = [7,4,38,21,16,15,12,33,31,49]

// 2. filter out any numbers that are even
let filteredLuckyNumbers = luckyNumbers.filter {
    if($0%2 == 0){
        return false
    } else{
        return true
    }
}
// print(filteredLuckyNumbers)

// 3. then sort the array in ascending order
let sortedLuckyNumbers = filteredLuckyNumbers.sorted()
// print(sortedLuckyNumbers)

// 4. map them to strings in the format "7 is a lucky number"
let stringArray = sortedLuckyNumbers.map { "\($0) is a lucky number" }
// print(stringArray)

print("--- method 1 ---")
// 5. print the resulting array, one item per line
for s in stringArray{
    print("\(s)")
}
print("--- method 2 ---")

// 6. now let's do it again and see if i can do it in fewer lines
let stringArrayAlt = luckyNumbers.sorted().filter{ $0%2 != 0 }.map{"\($0) is a lucky number"}
for s in stringArrayAlt{
    print("\(s)")
}
print("--- method 3 ---")

// 7. now make it really squashed. Don't love this, but it works
for s in (luckyNumbers.sorted().filter{ $0%2 != 0 }.map{"\($0) is a lucky number"}) {
    print("\(s)")
}

// 8. now i want to do it a long ass way
let filter = {(e:Int) -> Bool in
   return e%2 != 0
}
 let filteredLuckyNumbersAlt = luckyNumbers.filter(filter)
//print(filteredLuckyNumbersAlt)

let sort = {(a:Int,b:Int) -> Bool in
    return a<b
}
let sortedLuckyNumbersAlt = filteredLuckyNumbersAlt.sorted(by: sort)
//print(sortedLuckyNumbersAlt)

let stringMap = {(e:Int)->String in
    return "\(e) is a lucky number"
}
let stringArrayAlt2 = sortedLuckyNumbersAlt.map(stringMap)
//print(stringArrayAlt2)

print ("--- method 4 ---")
for s in stringArrayAlt2{
    print(s)
}


