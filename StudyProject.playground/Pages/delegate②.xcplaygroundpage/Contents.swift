//: [Previous](@previous)

import Foundation

protocol DataSource: AnyObject {//🟥循環参照を避けるためにAnyObjectをつける
    func items() -> [String]
}

class Printer {
   weak var dataSource: DataSource? = nil //🟥weakを付ける

    func  printList()  {
        if let dataSource = dataSource {
            let items = dataSource.items()
            for item in items {
                print(item)
            }
        } else {
            print("nil")
        }
    }
}

class FruitDataSource: DataSource {
    func items() -> [String]{
        return ["りんご","みかん","バナナ"]
    }
}

class PersonDataSource: DataSource {
    func items() -> [String]{
        return ["佐藤","鈴木","田中"]
    }
}

class AnimalDataSource: DataSource {
    func items() -> [String] {
        return ["くじら","猫","ライオン"]
    }
}

Printer().printList()

let printer = Printer()
//printer.dataSource = FruitDataSource()
//printer.dataSource = PersonDataSource()
let animalDataSource = AnimalDataSource()
printer.dataSource = animalDataSource
printer.printList()


