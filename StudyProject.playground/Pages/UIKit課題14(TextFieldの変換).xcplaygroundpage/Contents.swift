//: [Previous](@previous)

import Foundation
import UIKit

struct Item {
    var name: String
    var isChecked: Bool
}

class ItemViewModel {
    var items = [
    Item(name: "ぺん", isChecked: true)
    ]
}

class Main {
    var vm = ItemViewModel()
    func appendArray(){
        vm.items.append(Item(name: "🟥🟥🟥", isChecked: true))
        print(vm.items)
//        Sub().printA()
    }
}

class Sub {
    var vm = ItemViewModel()
    func printA(){
        print(">>>subだよーん",vm.items)
    }
}

let main = Main()
//main.appendArray()
let main2 = Main()
main2.appendArray()
print(">>>", main.vm.items)
//let sub = Sub()
//sub.vm.items.append(Item(name: "🟦🟦🟦", isChecked: false))
//print(sub.vm.items)

//🟥後で解決する
//var name = "sako"
//name as! UITextField
//if let text = textField.text {
//    print(text)
//} else {
//    print("値なし")
//}
