import UIKit


struct Book {
    var title: String
    var auther: String
    var readingAge: Int
    var pageCount: Int
}

let book1 = Book.init(title: "ABC", auther: "Reem", readingAge: 10, pageCount: 100)
let book2 = Book.init(title: "how to", auther: "Nada", readingAge: 18, pageCount: 200)
let book3 = Book.init(title: "intro to swift", auther: "Hind", readingAge: 9, pageCount: 400)

let allBooks = [book1, book2, book3]

//

let sortedBooks2 = allBooks.sorted { $0.readingAge <= $1.readingAge }
print(sortedBooks2)
print(allBooks.sorted {$0.pageCount <= $1.pageCount })


//

print(allBooks.filter({$0.auther.contains("Hind")}))
