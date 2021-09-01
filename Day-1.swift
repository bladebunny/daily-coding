/*
Given a list of numbers and a number k, return whether any two numbers from the list add up to k.

For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.

Bonus: Can you do this in one pass?
*/
import Foundation

func canAddTo(_ numbers: [Int], k: Int) -> Bool {

	let count = numbers.count
	if count < 2 {
		return false
	}

	var current = 0
	
	while(current < count - 1) {
		var next = current + 1
		
		while(next < count) {
			let currentNum = numbers[current]
			let nextNum = numbers[next]
			
			if(nextNum + currentNum == k) {
				return true
			}
			
			next += 1
		}
					
		current += 1
	}

	return false
}

let numbers = [10, 15, 3, 7]
var k = 17

print("\(numbers) can add to \(k) == \(canAddTo(numbers, k: k))")

k = 10
print("\(numbers) can add to \(k) == \(canAddTo(numbers, k: k))")
