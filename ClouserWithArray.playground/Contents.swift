import UIKit

struct Book {
    var tite : String
    var auther : String
    var radingAge : Int
    var pageCount : Int
}




let book1 = Book.init(tite: "ABC", auther: "ALi", radingAge: 14, pageCount: 200)

let book2 = Book.init(tite: "how to Learn", auther: "Khalid", radingAge: 18, pageCount: 120)

let book3 = Book.init(tite: "swift", auther: "Huda", radingAge: 8, pageCount: 90)

let allbooks = [book1 , book2 , book3]


func findbook( book : Book) -> Bool {
    if book.auther == "Huda" {
        return true
    } else {
        return false
    }
}

let findbooks = allbooks.filter(findbook)
print(findbooks)


//use clouser

let findbookClou = allbooks.filter{ $0.auther == "Huda" }
print(findbookClou)
