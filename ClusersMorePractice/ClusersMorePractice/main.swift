

import Foundation
//
//// MARK: first type of cluser
//let hello = {
//    print("hello")
//}
//
//hello()
//
//
//// MARK: second type of cluser
//let hi: () -> () = {
//    print("hi")
//}
//
//hi()
//
//
//// MARK: third type of cluser
//let slam: (String) -> () = { name in
//    print("slam \(name)")
//}
//
//slam("moh")
//
//
//// MARK: fourth type of cluser
//let otherSalam: (String) -> () = {
//    print("slam \($0)")
//}
//
//slam("other moh")
//
//
//// MARK: challenge D0 cluser that use 3 parameters
//let challenge: (String,String,String) -> () = {
//    print("your name is \($0) \($1) \($2)")
//
//}
//
//challenge("mohammed", "Ali", "Almasnad")
//
//// MARK: fith shape of cluser
//let lastSlam: (String) -> Void = { (name:String) -> Void in
//    print("slam \(name)")
//}
//
//slam("other moh")
//
//// MARK: full cluser
//
////let clouserName: (parameter types) -> return type = {
////    (parameter name): (parameter type) -> return type in
////
////}
//
//
////MARK: function inside function
//func calc(num1: Int , num2: Int, opretion:(Int , Int) -> Int) -> Int {
//    return opretion(num1 , num2)
//}
//
//func multiply(num1: Int , num2:Int) -> Int {
//    return num1 * num2
//}
//
//func add(num1: Int , num2:Int) -> Int {
//    return num1 + num2
//}
//print(calc(num1: 2, num2: 5, opretion: add))
//
//
////MARK: clouser inside function
//func calculater(num1: Int , num2: Int, opretion:(Int , Int) -> Int) -> Int {
//    return opretion(num1 , num2)
//}
//
//
//print(
//    calc(num1: 2, num2: 5){$0 * $1}
//)


struct Book {
    var title: String
    var auther: String
    var readingAge: Int
    var pageCount: Int
}

let book1 = Book(title: "A", auther: "moh", readingAge: 13, pageCount: 200)
let book2 = Book(title: "B", auther: "boh", readingAge: 14, pageCount: 200)
let book3 = Book(title: "C", auther: "Huda", readingAge: 12, pageCount: 200)

let arrBooks: [Book] = [book1,book2,book3]

//let sortedArrsy = arrBooks.sorted {$0.readingAge > $1.readingAge}
//print(sortedArrsy)
let filterdBooks = arrBooks.filter{$0.auther == "Huda"}
print(filterdBooks)
