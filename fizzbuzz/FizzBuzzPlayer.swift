
class FizzBuzzPlayer {
    func play(number: Int) -> String {
        let word = fizzbuzz(number: number)
        return word.isEmpty ? String(number) : word
    }
    
    func fizzbuzz(number:Int) -> String {
        return wordFor(number: number, factor: 3, word: "fizz")
             + wordFor(number: number, factor: 5, word: "buzz")
    }
    
    func wordFor(number:Int, factor:Int, word:String) -> String {
        return number % factor == 0 ? word : ""
    }
}
