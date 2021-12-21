//
//  main.swift
//  closureExpression
//
//  Created by Areej on 20/12/2021.
//

import Foundation
//1
let SayHello = {
    print("Hello.this is closure sission")
}
    SayHello()


//2
let SayHello2: ()->() = {
    print("Hello2.this is closure sission")
}
    SayHello2()


//3
let SayHello3: (String)->() = { firstName in
    print("Hello \(firstName)")
}
    SayHello3("Areej")


//4
let SayHello4: (String)->() = {
    print("Hello again \($0)")
}
    SayHello4("Areej")


//5
let SayHello5: (String, String, String)->() = {
    print("Hello again \($0) \($1)  \($2)")
}
    SayHello5("Areej", "Mohammad", "Alhabi")



/*
 
 let closureName: (parameter types) -> return type = {
 (parameter name) : (parameter type) -> return type in
}
 
 */


//6
let SayHello6: (String)->() = { (name : String) -> Void in
    print("sorry Hello again \(name)")
}
    SayHello6("Areej")


//7
func culc ( num1 : Int, num2: Int , operation : (Int, Int)-> (Int))-> Int{
    return operation(num1, num2)
}

func mutiplay ( num1 : Int, num2: Int ) -> Int{
    
    return num1*num2
}

print(
    culc(num1: 2, num2: 4){$0*$1}
)

print("==================================")
//8
let book1 = Book.init(title: "How to learn Swift", auther: "james", radingAge: 15, pageCount: 320)
let book2 = Book.init(title: "How to be helthy", auther: "mareia", radingAge: 14, pageCount: 210)
let book3 = Book.init(title: "think positive", auther: "Taghreed", radingAge: 10, pageCount: 150)

let Books = [ book1 , book2 , book3 ]

    let sortedBooks = Books.sorted{$0.radingAge <= $1.radingAge }
print(sortedBooks)
 
print("==========================")

let jamesBook = Books.filter{$0.auther == "james"}
print(jamesBook)
