
import Quick
import Nimble
@testable import fizzbuzz

class fizzBuzzSpec : QuickSpec {
    override func spec() {
        describe("The fizz buzz player") {
            expectResult(expected: "1", number: 1)
            expectResult(expected: "2", number: 2)
            expectResult(expected: "fizz", number: 3)
            expectResult(expected: "buzz", number: 5)
            expectResult(expected: "fizz", number: 6)
            expectResult(expected: "buzz", number: 10)
            expectResult(expected: "fizzbuzz", number: 15)
            expectResult(expected: "fizzbuzz", number: 90)
        }
    }
    
    func expectResult(expected: String, number: Int) {
        describe("given \(number)") {
            it ("returns \(expected)") {
                let player = FizzBuzzPlayer()
                expect(player.play(number: number)).to(equal(expected))
            }
        }
    }
}
