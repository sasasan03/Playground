//: [Previous](@previous)

import Foundation

//事例が持つケース
enum CategoryType {
    case Health, Mental, Relationships, Movement
}

//🟥やること
//①一つケースを検索して、ケースの持つ記事を返す
//②二つのケースを持つものを検索して記事を返す

//
//struct Article {
//    var tags: [CategoryType] = [.Health,.Relationships]
//}
//
//
//
//func searchArticles(in articles: [Article], with category: CategoryType) -> [Article] {
//    return articles.filter { $0.tags.contains(category) }
//}
