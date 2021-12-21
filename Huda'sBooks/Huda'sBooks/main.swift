//
//  main.swift
//  Huda'sBooks
//
//  Created by TAGHREED on 17/05/1443 AH.
//

import Foundation

struct Book{
    var title: String
    var auther: String
    var radingAge: Int
    var pageCount: Int
}

let book1 = Book.init(title: "ABCD", auther: "Ali", radingAge: 14, pageCount: 200)
let book2 = Book.init(title: "how to", auther: "Khalid", radingAge: 18, pageCount: 120)
let book3 = Book.init(title: "intro to swift", auther: "Huda", radingAge: 8, pageCount: 90)
let book4 = Book.init(title: "intro to Kotlin", auther: "Huda", radingAge: 17, pageCount: 170)

let allBooks = [ book1 , book2 , book3 , book4 ]

let sortedBooks = allBooks.sorted{$0.radingAge <= $1.radingAge }



//print all the books that authered by Huda

let hudasBooks1 = allBooks.filter { $0.auther.localizedStandardContains("Huda")
}
print(hudasBooks1)

let hudasBooks2 = allBooks.filter {$0.auther.contains("Huda")
}
print(hudasBooks2)
