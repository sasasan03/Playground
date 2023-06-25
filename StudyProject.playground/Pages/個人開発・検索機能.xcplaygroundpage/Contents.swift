//: [Previous](@previous)

import Foundation



//func findCommonElements(in arrayA: [Int], and arrayB: [Int]) -> [Int] {
//    var commonElements = [Int]()
//
//    // 配列Aの要素を順に調べる
//    for element in arrayA {
//        // 配列Bに要素が含まれているかチェックする
//        if arrayB.contains(element) {
//            commonElements.append(element)
//        }
//    }
//
//    return commonElements
//}
//
//let arrayA = [1, 2, 3, 4, 5]
//let arrayB = [4, 5, 6, 7, 8]
//
//let commonElements = findCommonElements(in: arrayA, and: arrayB)
//print(commonElements) // [4, 5]




enum CategoryType {
    case 発達
    case 身体
    case ADHD
}
//この記事は.ADHDと発達のタグを持つ。この条件に当てはまった場合にのみ記事を出してくれる
struct Article {
var tags :[CategoryType] = [.ADHD,.発達,.発達,.発達]
}

enum カテゴリー{
case 発達
case 身体
case ADHD
}

func searchArticles(in articles: [Article], with category: CategoryType) -> [Article] {
    return articles.filter { $0.tags.contains(category) }
}

let article1 = Article()
let article2 = Article()
let article3 = Article()
let articles = [article1, article2, article3]

let categoryToSearch: CategoryType = .発達
let searchedArticles = searchArticles(in: articles, with: categoryToSearch)

print(searchedArticles)
