//: FizzBuzz

import Foundation

// 1: Just FizzBuzz with conditionals

for i in 1...100
{
    if i % 5 == 0 && i % 3 == 0 {
        print("FizzBuzz")
    }
    else if i % 3 == 0 {
        print("Fizz")
    }
    else if i % 5 == 0 {
        print("Buzz")
    }
    else {
        print(i)
    }
}

// 2: FizzBuzz with a tuple and the switch statement

for i in 1...100
{
    switch (i % 3 == 0, i % 5 == 0)
    {
    case (true, false):
        print("Fizz")
    case (false, true):
        print("Buzz")
    case(true, true):
        print("FizzBuzz")
    default:
        print(i)
    }
}

// 3: FizzBuzz with a closure and .map()

let fizzbuzz:(Int) -> String = { i in
    switch (i % 3 == 0, i % 5 == 0)
    {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case(true, true):
        return "FizzBuzz"
    default:
        return "\(i)"
    }
}

let result = Array(1...100).map(fizzbuzz).joined(separator: ", ")
print(result)

