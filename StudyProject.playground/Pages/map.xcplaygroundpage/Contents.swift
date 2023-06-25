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

extension Array where Element == Item {
    func unchecked() -> [Item]{
      let arrayMap =  self.map{ item in item }
        return arrayMap
    }
}

var items = [
    Item(name: "りんご", isChecked: true),
    Item(name: "メロン", isChecked: false),
    Item(name: "スイカ", isChecked: true),
    Item(name: "さくらんぼ", isChecked: false)
]

(0..<items.count).forEach{
    items[$0].isChecked = false
    print(items[$0].isChecked)
}


//---------------------------------test

//var changeArray:[Int] = []
//var array = [1,2,3,4,5]
//
//let newIntArray = array.map{ int in
//    int * 5
//}
//changeArray = newIntArray
//
//array.map{ int -> [Int] in
//    changeArray.append(int * 3)
//    return changeArray
//}
//print(changeArray)
//
//array.forEach{ int in
//     var double = int * 2
//    changeArray.append(double)
//}
//print(changeArray)

//---------------------------------

struct MyStruct {
    var value: Bool
}
// サンプルの構造体配列
var myArray = [MyStruct(value: true), MyStruct(value: false), MyStruct(value: true)]

// `map`関数を使用して構造体配列のBool値を切り替える
let updatedArray = myArray.map { myStruct in
    var updatedStruct = myStruct
    updatedStruct.value = !myStruct.value
    return updatedStruct
}

// 更新された配列を表示
print(updatedArray)
