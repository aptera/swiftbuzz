
class FizzBuzzPlayer {
    func play(number: Int) -> String {
        let word = fizzbuzz(number: number)
        return word.isEmpty ? String(number) : word
    }
    
    private func fizzbuzz(number:Int) -> String {
        return fizz(number: number)
             + buzz(number: number)
    }
    
    private func fizz(number: Int) -> String {
        return wordFor(number: number, factor: 3, word: "fizz")
    }
    
    private func buzz(number: Int) -> String {
        return wordFor(number: number, factor: 5, word: "buzz")
    }
    
    private func wordFor(number:Int, factor:Int, word:String) -> String {
        return number % factor == 0 ? word : ""
    }
}
