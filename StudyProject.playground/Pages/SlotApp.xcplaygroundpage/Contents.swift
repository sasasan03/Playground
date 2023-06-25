//: [Previous](@previous)

import Foundation
import SwiftUI

//------------------------------------------------
enum Const {
    static let baseOffset: CGFloat = 75
    static let size: CGFloat = 100
    // 画像がないので数字を Symbol として使う
    static let symbols = [0, 1, 2, 3, 4]
}

Const.symbols.suffix(2).first!//3
Const.symbols.suffix(2).last!//4
Const.symbols.prefix(2).first!//0
Const.symbols.prefix(2).last!//1
//------------------------------------------------
Const.symbols.suffix(3).first! //2
Const.symbols.suffix(3).last!  //4
Const.symbols.prefix(3).first! //0
Const.symbols.prefix(3).last!  //2
