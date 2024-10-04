// Checkpoint 3
// FizzBuzz problem
// count from 1 to 100, writing
// Fizz for Every Multiple of 3, Buzz
// for every multiple of 5, FizzBuzz for
// multiples of 3 AND 5, and the number
// for everything else

for i in 1...100 {
	var str:String = ""

	if i.isMultiple(of: 3){
		str = "Fizz"
	}

	if i.isMultiple(of: 5){
		str += "Buzz"
	}

	if str.isEmpty {
		str = String(i)
	}
	print(str)
}

