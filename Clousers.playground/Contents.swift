
//Example:
struct Book {
    var title: String
    var author: String
    var pagesNumber: Int
    var readerAge: Int
}

let b1 = Book(title: "Arabic", author: "Lola", pagesNumber: 200, readerAge: 20)
let b2 = Book(title: "Chineese", author: "Hadi", pagesNumber: 150, readerAge: 30)
let b3 = Book(title: "French", author: "Huda", pagesNumber: 150, readerAge: 30)
let b4 = Book(title: "English", author: "Huda", pagesNumber: 90, readerAge: 21)


let books = [b1, b2, b3, b4]

let booksPagesNumbers = books.sorted { $0.pagesNumber <= $1.pagesNumber}
print(booksPagesNumbers)
print("\n\n")


let booksReadersAge = books.sorted { $0.readerAge >= $1.readerAge }
print(booksReadersAge)
print("\n\n")


//HW: Give me array/s that contains onyly authur = huda
let booksOfHuda = books.contains { $0.author == "Huda" } // This give me T or F
let booksOfHuda1 = books.filter { $0.author == "Huda" } //This give me results

print(booksOfHuda)
print("\n\n")
print(booksOfHuda1)
