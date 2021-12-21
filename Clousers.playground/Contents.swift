import UIKit

struct Book {
    var tite : String
    var auther : String
    var ratingAge : Int
    var pageCount : Int
}




let book1 = Book.init(tite: "A", auther: "Aisha", ratingAge: 14, pageCount: 500)

let book2 = Book.init(tite: "B", auther: "Eshraq", ratingAge: 7, pageCount: 300)

let book3 = Book.init(tite: "C", auther: "Farah", ratingAge: 1, pageCount: 100)

let allbooks = [book1 , book2 , book3]


func findBook( book : Book) -> Bool {
    if book.auther == "Aisha" {
        return true
    } else {
        return false
    }
}

let findBooks = allbooks.filter(findBook)
print(findBooks)

let findBookClouser = allbooks.filter{ $0.auther == "Aisha" }
print(findBookClouser)//Using clouser
