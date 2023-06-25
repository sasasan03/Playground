//: [Previous](@previous)

import Foundation

protocol Calculator: AnyObject {
    var name: String { get }
    func calculate(a: Int, b: Int) -> Int
}

class MessageMaker {
    weak var calculator: Calculator?
    
    func  makeMessage(a: Int, b: Int) -> String {
        if let calculator = calculator {
            let result = calculator.calculate(a: 10, b: 3)
            return "\(a)と\(b)を\(calculator.name)すると、結果は\(result)です"
        } else {
            return "calcが設定されていません"
        }
    }
}

class AdditionMessageMaker: Calculator {
    var name: String = "足し算"
    
    func calculate(a: Int, b: Int) -> Int {
        return a + b
    }
}

class SubstractionMessageMaker: Calculator {
    var name: String = "引き算"

    func calculate(a: Int, b: Int) -> Int {
        return a - b
    }
}

let maker = MessageMaker()

maker.makeMessage(a: 10, b: 3)

let add = AdditionMessageMaker()
maker.calculator = add

maker.makeMessage(a: 10, b: 3)

