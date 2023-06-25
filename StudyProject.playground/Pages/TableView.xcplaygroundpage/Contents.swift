//: [Previous](@previous)

import Foundation
import UIKit

//ItemListPrinterクラスが使うプロトコル。データソースクラスに適合させる。
protocol ItemListDataSource: AnyObject {
    func numberOfItems() -> Int //項目数をIntで返す
    func stringForRowAt(index: Int) -> String //項目を選択して文字列で返す
}


//文字を出力するためのクラス
class ItemLsitPrinter { //🟥List表示の責任を負っている
    weak var dataSource: ItemListDataSource?
    
    func reload(){
        guard let dataSource = dataSource else { return }
        for i in 0 ..< dataSource.numberOfItems(){
            let text = dataSource.stringForRowAt(index: i)
            print(">>>\(text)")
        }
    }
}

//フルーツのデータソース
class FruitsDataSource: ItemListDataSource {
    func numberOfItems() -> Int {
        return 3
    }

    func stringForRowAt(index: Int) -> String {
        switch index {
        case 0:
            return "りんご"
        case 1:
            return "ぶどう"
        case 2:
            return "みかん"
        default:
            return "バナナ"
        }
    }
}
//ユーザーのデータソース
class UsersDataSource: ItemListDataSource {
    private let name = ["佐藤","鈴木","田中","佐小田"]

    func numberOfItems() -> Int {
        return name.count
    }

    func stringForRowAt(index: Int) -> String {
        return name[index]
    }
}

//ViewControllerを再現したもの
class ViewController1: UIViewController {
    private let itemListPrinter = ItemLsitPrinter()
    
    private let fruitsDataSource = FruitsDataSource()
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        itemListPrinter.dataSource = fruitsDataSource
        
        print("[例１]")
        itemListPrinter.reload()
    }
}

let viewController1 = ViewController1()
viewController1.viewDidLoad()

class ViewController2: UIViewController, ItemListDataSource {
    
    private let fruits = ["りんご","もも","みかん"]
    
    func numberOfItems() -> Int {
        return fruits.count
    }
    
    func stringForRowAt(index: Int) -> String {
        return fruits[index]
    }
    
    private let itemListPrinter = ItemLsitPrinter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        itemListPrinter.dataSource = self
        
        print("[例２]")
        
        itemListPrinter.reload()
    }
}

let viewController2 = ViewController2()
viewController2.viewDidLoad()

//---------------------------------------------------------------
//let itemListPrinter = ItemLsitPrinter()
//let userDataSource = UsersDataSource()
//itemListPrinter.dataSource = userDataSource
//itemListPrinter.reload()
//print("--------------------------")
//let fruitsDataSource = FruitsDataSource()
//itemListPrinter.dataSource = fruitsDataSource
//itemListPrinter.reload()


