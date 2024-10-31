// Checkpoint 4
// write a function to check for round square roots without using sqrt
// throw errors if number is not in range 1->10,000
// I decided to use a Tuple to return if it has a square, and what it is if so
// I could have also just sent -1 back, or an error if it wasn't a good round number
// but I wanted to practics Tuples and default and implied values.

// define the error
enum OutOfBoundsError : Error {
    case belowBounds
    case aboveBounds
}

func hasWholeNumberSquareRoot(_ number: Int) throws -> (hasSquare: Bool, square: Int) {

    // check for out of bounds
    if(number<1) {
        throw OutOfBoundsError.belowBounds
    }
    if(number>10_000) {
        throw OutOfBoundsError.aboveBounds
    }

    for i in 1...number{
        if(i*i == number){
            return (true, i)
        }
    }
    return (false, -1)

}

let reportNonWholes = false;

for i in -1...10_001{
    do{
        let num = i
    let (hasSquare, square) = try hasWholeNumberSquareRoot(num)
    if(hasSquare){
        print("\(num) has a square and it's \(square)")
    } else {
        if(reportNonWholes){
            print("\(num) doesn't have a whole square")
        }
    }
    } catch OutOfBoundsError.belowBounds{
        print("\(i) is below bounds!")
    } catch OutOfBoundsError.aboveBounds{
        print("\(i) is above bounds!")
    }
}