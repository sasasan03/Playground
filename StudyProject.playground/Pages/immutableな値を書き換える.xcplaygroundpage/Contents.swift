//: [Previous](@previous)

import Foundation

struct Item {
    var name: String
    var isChecked: Bool
    
    func unchecked() -> Item{
        let item = Item(name: name, isChecked: false)
        return item
    }
}

var items = [
    Item(name: "りんご", isChecked: true),
    Item(name: "メロン", isChecked: false),
    Item(name: "スイカ", isChecked: true),
    Item(name: "さくらんぼ", isChecked: false)
]
//------------------------------------forEach
func falseOne(){
    (0..<items.count).forEach{ items[$0].isChecked = false }
    let item02 = items[0...]
    print(">>>",items[0...])
}
//falseOne()

func falseTwo(){
    items.indices.forEach{ items[$0].isChecked = false }
    print(">>>",items[0...])
}
//falseTwo()

//------------------------------------map
func mapOne(){
    items = items.map{
        var item = $0
        item.isChecked = false
        print(">>>",item)
        return item
    }
}
mapOne()
