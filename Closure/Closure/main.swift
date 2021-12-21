import Foundation

//closure 1
let say1 = {
print("Hello ..")
    /*closure expression*/
}

say1()

//closure 2
let say2: () -> () = {
print("Hi")
   
}

say2()


//closure 3
let say3: (String) -> () = {firstName in
print("Hi: \(firstName)")
   
}

say3("Abdullah")

//closure 4
let say4: (String) -> () = {
print("Hello: \($0)")
   
}

say4("Abdullah")


//challenge

let challenge: (String, String, String) -> () = {
print("Your name is: \($0),\($1), \($2)")
   
}

challenge("Abdullah", "Mansoor", "AlRashoudi")


let challenge1: (String, String, String) -> () = { firstName, secondName, lastName in
print("Your name is: \(firstName) ,\(secondName) , \(lastName)")
   
}

challenge1("Abdullah", "Mansoor", "AlRashoudi")


//closure 5
let say5: (String) -> () = { (firstName: String) in
print("Hello: \(firstName)")
   
}

say5("Abdullah")


//closure 6
let say6: (String) -> () = { (firstName: String) -> () in
print("Hello: \(firstName)")
   
}

say6("Abdullah")

//closure 7
let say7: (String) -> Void = { (firstName: String) -> () in
print("Hello: \(firstName)")
   
}

say7("Abdullah")

//closure 8
let say8: (String) -> Void = { (firstName: String) -> Void in
print("Hello: \(firstName)")
   
}

say8("Abdullah")

/*let closureName: (parameter types)-> return type = {
 (parameter name): (parameter type) -> return type in
 }*/


func calc (num1: Int, num2: Int, operation: (Int,Int)-> Int) -> Int{
    operation(num1, num2)
}

func multiply(num1: Int, num2: Int) -> Int {
    num1 * num2
}

func sub(num1: Int, num2: Int) -> Int {
    num1 + num2
}

print (
calc(num1: 6, num2: 3){$0 * $1},
calc(num1: 6, num2: 3){$0 + $1}
)
      /*trailing closure 👆🏻*/


struct Book {
    var title: String
    var author: String
    var readingAge: Int
    var pageCount: Int

}

let book = Book.init(title: "iOS", author: "Abdullah", readingAge: 15, pageCount: 180)
let book1 = Book.init(title: "MacOS", author: "Abdulmajeed", readingAge: 18, pageCount: 200)
let book2 = Book.init(title: "WatchOS", author: "Huda", readingAge: 16, pageCount: 220)

let allBooks = [book,book1,book2]


func compareTwoBooks(firstBook: Book, secondBook: Book) -> Bool {
    
    if firstBook.readingAge <=  secondBook.readingAge {
        return true
    } else {
        return false
    }
}


let sortedBooks = allBooks.sorted {$0.readingAge <= $1.readingAge}
                                   /*trailing closure 👆🏻*/
print(sortedBooks)
print()

let filterAuthor = allBooks.filter{$0.author == "Huda"}

print(filterAuthor)
