import Foundation

//1
//let sayHi = {
// print("hi ..")
//}

//sayHi()
//2
//let sayHI: () -> () = {
// print("hi ..")
//}

//sayHI()

//3
//let sayHello: (String) -> () = { firstName in
//
//    print("hi \(firstName)")
//}

//sayHello("Nora")

//4
//let sayHEllO: (String) -> () = {
//
//    print("hi \($0)")
//}

//sayHEllO("Nora")


//let nameIs: (String,String,String) -> () = {
//    print("your name is \($0) \($1) \($2)")
//
//}
//
//nameIs("Nora","Ibrahim","Alluqmani")
//
//
//
//let hello: (String) -> Void = {(name: String) -> Void in
//
//    print("Hello \(name)")
//}


//MARK: befor sumary clouser
//func calc (num1: Int , num2: Int , operation: (Int, Int) -> (Int) )
//-> Int {
//    return operation(num1 , num2)
//}
//
//func multiply(num1: Int , num2: Int) -> Int {
//    return num1 * num2
//}
//
//print(
//
//    calc(num1: 2, num2: 6, operation: multiply)
//)



// //MARK: aftaer sumary clouser

//func calc (num1: Int , num2 : Int,operation :(Int ,Int) -> (Int)) -> Int {
//    return operation(num1,num2)
//}
//
//
//
//print(
//    calc(num1: 2, num2: 6 ) {$0 * $1}
//     ,
//    calc(num1: 2, num2: 2 ) {$0 + $1}
//)



//MARK: Examble All

struct Book{

    var title : String
    var authear : String
    var readingAge : Int
    var pagConunt : Int


}


let book1 = Book.init(title: "ABC", authear: "Huda", readingAge: 14, pagConunt: 200)

let book2 = Book.init(title: "ABC", authear: "Ali", readingAge: 18, pagConunt: 120)

let book3 = Book.init(title: "ABC", authear: "Nora", readingAge: 8, pagConunt: 90)


let allBooks = [book1,book2,book3]

func compareToWBooks(firsBook : Book, secondBook: Book) ->Bool{

    if firsBook.readingAge <= secondBook.readingAge{

        return true

    }else{

        return false


    }



}

// //MARK: befor sumary clouser must write funcation for builed logic
//
//let sortedBooks = allBooks.sorted(by: compareToWBooks)
//
//print(sortedBooks)
//

// //MARK: aftaer sumary clouser with out write funcation

//let sortedBooksSumary = allBooks.sorted{$0.pagConunt <= $1.pagConunt}
//
//print("sortedBooksSumary : ", sortedBooksSumary)



//assignment
let bookName = allBooks.filter { $0.authear == "Huda" }
print(bookName)
