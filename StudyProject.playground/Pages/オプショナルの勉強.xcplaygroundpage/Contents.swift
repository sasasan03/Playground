//: [Previous](@previous)

import Foundation



let num: Int? = 3
func unwrrap() -> String{
    guard num != 0 else { return "nil" }
    return "\(num)"
}
unwrrap()

//Student型
class Student {
    let name: String
    weak var  club: Club?
    init(name: String) {
        self.name = name
        //self.club = Club(name: "もも")
    }
}

//Club型
class Club {
    let name: String
    weak var teacher: Teacher
    var budget = 0
    var members = [Student]()
    init(name: String,teacher: Teacher){
        self.name = name
        self.teacher = Teacher(name: "ささ")
    }
    
    func add( _ s :Student){
        members.append(s)
        s.club = self
    }
    
    func isOfficial() -> Bool {
        return members.count >= 5 && teacher != nil
    }
}

//Teacher型
class Teacher {
    let name: String
    var subject: String? = nil
    init(name: String){
        self.name = name
    }
}

//学生のインスタンスを参照していて、その学生がクラブに所属している場合、
//そのクラブに顧問の先生がいればその先生の名前を表示すると言うプログラムを考える。
var who = Student(name: "さこ")
//print(type(of: who))
let club = Club(name: "野球部")
who.club = club
who.club?.budget = 100000000
let teacher = Teacher(name: "とき")
teacher.subject = "理科"
who.club?.teacher = teacher
who.club?.add(Student(name: "太郎"))
who.club?.add(Student(name: "もも"))
who.club?.add(Student(name: "喜多郎"))
who.club?.add(Student(name: "吾郎"))
who.club?.add(Student(name: "なると"))
who.club?.isOfficial()
//print(who.club?.teacher?.name ?? "ノー先生")
//--------------------------------------------------------
//オプショナル束縛構文を使わなかったら、、、
//if who != nil {
//    if who.club != nil {
//        if who.club?.teacher != nil {
//            print(">>>",who.club?.teacher?.name)
//        }
//    }
//}

//--------------------------------------------------------
//オプショナル束縛構文を使うと、、、
//🟦見やすい
//🟥新たな定数の意味を把握して、追跡しなければならない
//let  w = who //classなので参照渡しになる。
//print(w.name)
//if let club = w.club, let tc = club.teacher {
//    print(tc.name)
//}



//オプショナルチェーン
if let name = who.club?.teacher.name {
    print(name)
}

//--------------------------------------------------------

let halley : Int? = Int("1986")
if  var halley = halley {
    print("ハレー彗星は\(halley)年にきた")
    halley += 75
    print("次来るのは\(halley)年だ")
}

let str = "3"
var val: Int = Int(str) ?? 0
let x = Optional(1)
let y = Optional(2)
//val = Optional(4) ?? Optional(2) ?? 0
val = x ?? y ?? 0
