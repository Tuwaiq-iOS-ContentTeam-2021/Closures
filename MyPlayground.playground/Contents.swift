
struct Book{
    var title: String
    var auther: String
    var radingAge: Int
    var pageCount: Int
}

let book1 = Book.init(title: "How to do..", auther: "Ali", radingAge: 14, pageCount: 200)
let book2 = Book.init(title: "healthy life", auther: "Areej", radingAge: 18, pageCount: 120)
let book3 = Book.init(title: "intro to swift", auther: "Amal", radingAge: 8, pageCount: 90)

let allBooks = [ book1 , book2 , book3 ]


let autherName = allBooks.filter{ $0.auther == "Amal"}
print(autherName)
