//
//  main.swift
//  Clusres
//
//  Created by Mola on 20/12/2021.


// clusere expretion
//******** clusre types ********
////---------------- 1
//let sayHi = {
//    print("Hello ..")
//}
//
//sayHi()
////---------------- 2
//let sayHi2: () -> () = {
//    print("Hello ..")
//}
//
//sayHi2()
////---------------- 3
//let sayHi3: (String) -> () = { firstName in
//    print("Hello: \(firstName)")
//}
//
//sayHi3("basim")
////---------------- 4
//let sayHi4: (String) -> () = {
//    print("Hello: \($0)") // $0 is "first argument" in a closure "المدخل اللاول"
//}
//
//sayHi3("basim")
//
//// ----------------example 1
//let sayHi5: (String, String, String) -> () = { firstName , secont ,last in
//    print("Your name is: \(firstName), \(secont), \(last)")
//}
//sayHi5("amal", "rashed", "alghofaily")
////----------- or
//let sayHi6: (String, String, String) -> () = {
//    print("Your name is: \($0), \($1), \($2)")
//}
//sayHi6("amal", "rashed", "alghofaily")
///*
// # note:
// (String, String, String)            parameter
// ("amal", "rashed", "alghofaily")    argument
// */
//
////---------------- اشكال
//
//let sayHi7: (String) -> () = { (name: String) in
//    print("Your name is: \(name)")
//}
//
//sayHi7("amal")
////------- or
//let sayHi8: (String) -> () = { (name: String) -> () in
//    print("Your name is: \(name)")
//}
//
//sayHi8("amal")
////------- or
//let sayHi9: (String) -> Void = { (name: String) -> Void in
//    print("Your name is: \(name)")
//}
//
//sayHi9("amal")
///*
// # note:
// let closureName: (parameter types) ->  return type = { (paramenter name) : (parameter type) -> return type in
// }
// */
////---------------------------
//func calc (num1:Int, num2:Int, operation:(Int, Int) -> (Int) ) ->  Int{
//    return operation(num1, num2)
//}
//func multiply(num1:Int , num2:Int) -> Int{
//    return num1 * num2
//}
//func add(number1: Int, number2: Int) -> Int{
//    return number1 + number2
//}
//print(
//    calc(num1: 2, num2: 6, operation: multiply),
//    calc(num1: 2, num2: 6, operation: add)
//)
////--------------------------- **
//func calc1 (num1:Int, num2:Int, operation:(Int, Int) -> (Int) ) ->  Int{
//    return operation(num1, num2)
//}
//func multiply1(num1:Int , num2:Int) -> Int{
//    return num1 * num2
//}
//
//print(
//    calc1(num1: 2, num2: 6, operation: multiply1)
//)
//
////------- or
//func calc2 (num1:Int, num2:Int, operation:(Int, Int) -> (Int) ) ->  Int{
//    return operation(num1, num2)
//}
//
//print(
//    calc2(num1: 2, num2: 6,
//          operation: { (num1:Int , num2:Int) -> Int in
//              return num1 * num2
//          }
//         )
//)
////------- or
//func calc3 (num1:Int, num2:Int, operation:(Int, Int) -> (Int) ) ->  Int{
//    return operation(num1, num2)
//}
//
//print(
//    calc3(num1: 2, num2: 6,
//          operation: { (num1, num2) in
//              return num1 * num2
//          }
//         )
//)
////------- or
//func calc4 (num1:Int, num2:Int, operation:(Int, Int) -> (Int) ) ->  Int{
//    return operation(num1, num2)
//}
//
//print(
//    calc4(num1: 10, num2: 10) {$0 + $1} // traling clusure
//)
//-----------------------------------------------
struct Book{
    var title: String
    var auther: String
    var readingAge: Int
    var pageCount: Int
}

let book1 = Book.init(title: "Believe you can and you're halfway there", auther: "Ali", readingAge: 14, pageCount: 200)
let book2 = Book.init(title: "Once you choose hope, anything is possible", auther: "Amal", readingAge: 18, pageCount: 120)
let book3 = Book.init(title: "Kindness is a gift pass it on", auther: "Huda", readingAge: 8, pageCount: 90)

let allBooks = [book1,book2,book3]

//func compareTwoBooks(firstBook: Book, secondBook: Book ) -> Bool{
//    if firstBook.readingAge <= secondBook.readingAge{
//        return true
//    }else{
//        return false
//    }
//}
//print("the original array \(allBooks)")
//let sortedBooks = allBooks.sorted(by: compareTwoBooks) //
//print("after sorting  \(sortedBooks)")


//let sortedBooks = allBooks.sorted{ $0.readingAge <= $1.readingAge}
//print(sortedBooks)
//
//let sortedBooks2 = allBooks.sorted { $0.pageCount <= $1.pageCount}
//print(sortedBooks2)

// **********************************************
// Q: find a book by (Auther name: huda) ?
let findBookAuther = allBooks.filter {$0.auther.lowercased() == "huda"}
print(findBookAuther)
