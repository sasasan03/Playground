//: [Previous](@previous)

import Foundation
//足し算して、その結果を表示するクラス
//class AdditionResultPrinter{
//    func printResult(value1: Int, value2: Int){
//        let result = value1 + value2
//        print("\(value1)と\(value1)を足した結果は\(result)です")
//    }
//}
////引き算して、その結果を表示するクラス
//class SubtractionResultPrinter{
//    func printResult(value1: Int, value2: Int){
//        let result = value1 - value2
//        print("\(value1)と\(value1)を引き算した結果は\(result)です")
//    }
//}
////掛け算して、その結果を表示するクラス
//class MultiplicationResultPrinter{
//    func printResult(value1: Int, value2: Int){
//        let result = value1 * value2
//        print("\(value1)と\(value1)を掛け算した結果は\(result)です")
//    }
//}
//AdditionResultPrinter().printResult(value1: 2, value2: 3)
//SubtractionResultPrinter().printResult(value1: 8, value2: 3)
//MultiplicationResultPrinter().printResult(value1: 3, value2: 5)

class AdditionCalculator: Calculator {
    func calculate(value1: Int, value2: Int) -> Int {
        return value1 + value2
    }
    func calculationName() -> String {
        return "足し算"
    }
}
class SubtractionCalculator: Calculator {
    func calculate(value1: Int, value2: Int) -> Int {
        return value1 - value2
    }
    func calculationName() -> String {
        return "引き算"
    }
}

class ResultPrinter {
    //Calculatorプロトコルに準拠していれば差し替えが可能になる
    var calculator: Calculator = AdditionCalculator()
    
    func printResult(value1: Int, value2: Int) {
        let name = calculator.calculationName()
        let result = calculator.calculate(value1: value1, value2: value2)
        print("\(value1)と\(value2)を\(name)した結果は\(result)です")
    }
}

let printer = ResultPrinter()

printer.printResult(value1: 10, value2: 2)

let subtractionCalculator = SubtractionCalculator()

printer.calculator = subtractionCalculator

printer.printResult(value1: 10, value2: 2)


//以下の２つのメソッドを兼ね備えているものは
//Calculatorとして扱える
protocol Calculator {
    func calculate(value1: Int, value2: Int) -> Int
    func calculationName() -> String
}
