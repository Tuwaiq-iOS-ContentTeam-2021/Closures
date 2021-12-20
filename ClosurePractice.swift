
struct Book {
    
    let title : String
    let desc : String
    let auth : String
    let radingAge : Int
     
}

let book1 = Book.init(title: "Swift", desc: "iOS", auth: "Ahmad", radingAge: 17)
let book2 = Book.init(title: "Kotlin", desc: "Andriod", auth: "Mohammed", radingAge: 18)
let book3 = Book.init(title: "Cyber", desc: "Security", auth: "Huda", radingAge: 20)

let books = [ book1 , book2 , book3 ]

let booksFilter = books.filter{$0.auth == "Huda"}

print(booksFilter)