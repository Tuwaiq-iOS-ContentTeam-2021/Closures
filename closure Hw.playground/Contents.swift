import UIKit


struct Book{
    var title: String
    var auther : String
    var readingAge: Int
    var pageCount : Int
}

let book1 = Book.init(title: "ABCD", auther: "ALi", readingAge: 14, pageCount: 200)
let book2 = Book.init(title: "how to learn swift", auther: "walled", readingAge: 18, pageCount: 120)
let book3 = Book.init(title: "intro", auther: "Huda", readingAge: 8, pageCount: 90)

let allBooks = [ book1 , book2 , book3]

func comparetowBooks(firstBook: Book , secondBook :Book) -> Bool {
    if firstBook.readingAge <= secondBook.readingAge{
        return true
    }else {
        return false
    }
}

let sortedBooks = allBooks.sorted(by: comparetowBooks )
print(sortedBooks)


let sortedAllBooks = allBooks.sorted{$0.readingAge <= $1.readingAge}
allBooks.sorted { $0.pageCount <= $1.pageCount }// shot closure



let contentOfElements = allBooks.filter{$0.auther == "Huda"} // HW


print(contentOfElements)
