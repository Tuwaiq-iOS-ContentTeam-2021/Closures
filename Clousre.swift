



let allBooks = [ Book(title: "World War II", auther: "Rayan Essam", readingAge: 18, pageCount: 340) ,
                 Book(title: "Automate the boring stuff with python", auther: "Ali matrfi", readingAge: 8, pageCount: 1090),
                 Book(title: "introduction to swift", auther: "Huda", readingAge: 8, pageCount: 120)  ]

let auther = "huda"
let bookResult = allBooks.filter { $0.auther.lowercased() == auther.lowercased()}
print(bookResult)


//Struct
struct Book{
    var title: String
    var auther: String
    var readingAge: Int
    var pageCount: Int
}