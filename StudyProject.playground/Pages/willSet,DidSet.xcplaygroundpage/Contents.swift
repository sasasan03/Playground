//: [Previous](@previous)

import Foundation

struct Stock {
    let buyingPrice: Int
    var high = false
    var count = 0
    init(price: Int){
        buyingPrice = price
        self.price = price
    }
    var price: Int {
        willSet {
            count += 1
            high = newValue > buyingPrice
        }
        didSet {
            print("\(oldValue) => \(price)")
        }
    }
}

var stock = Stock(price: 110)
stock.price
stock.price = 120
stock.price = 90
print("\(stock.count)、\(stock.high)")
stock.price = 150
print("\(stock.count)、\(stock.high)")
