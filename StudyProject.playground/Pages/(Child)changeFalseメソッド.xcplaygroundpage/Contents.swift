//: [Previous](@previous)

import Foundation


struct ToDoDetail: Identifiable, Hashable, Codable  {
    var id = UUID()
    var name: String
    var isCheck: Bool
    
    func unchecked() -> ToDoDetail {
       let todoDetail =  ToDoDetail(name: name, isCheck: false) //!isCheck)
        return todoDetail
    }
}

struct ToDo: Identifiable, Hashable, Codable {
    var id = UUID()
    var name: String
    var toDoDetails: [ToDoDetail]
    
    func unchecked() -> ToDo {
         let toDo =  ToDo(name: name, toDoDetails: toDoDetails.map{ $0.unchecked() })
        return toDo
    }
}

extension Array where Element == ToDo {
    func unchecked() -> [ToDo]{
      let arrayMap =  self.map{ todo in todo }
        return arrayMap
    }
}
class ViewModel {
    var toDos = [
        ToDo(name: "朝の会",
             toDoDetails: [
                ToDoDetail(name: "うた", isCheck: true),
                ToDoDetail(name: "なまえよび", isCheck: false),
                ToDoDetail(name: "きょうのよてい", isCheck: true),
                ToDoDetail(name: "きょうのきゅうしょく", isCheck: false),
                ToDoDetail(name: "かけごえ", isCheck: true)
             ]
            )
    ]
}
let viewModel = ViewModel()

var arrayMap = viewModel.toDos[0].toDoDetails.map {
    $0.isCheck
}

//falseをtrueへ書き換える
var arrayChange: () = viewModel.toDos[0].toDoDetails.forEach { item  in
    var todoFalse:[ToDoDetail] = []
    todoFalse.append(item.unchecked())
    print(todoFalse)
}
//print(arrayChange)
//toDos = arrayChange

