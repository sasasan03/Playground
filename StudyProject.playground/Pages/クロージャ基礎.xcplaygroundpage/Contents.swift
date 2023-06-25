//: [Previous](@previous)

import Foundation

//🟥を記入しない限りprint("Testは呼ばれない")
func function(closure: () -> Void) {
   closure()//🟥
}

function(closure: {
    print("test")
})
