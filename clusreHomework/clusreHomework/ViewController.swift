//
//  ViewController.swift
//  clusreHomework
//
//  Created by Ghada Fahad on 17/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct Book{

            var title : String
            var authear : String
            var readingAge : Int
            var pagConunt : Int


        }


        let book1 = Book.init(title: "ABC", authear: "Huda", readingAge: 14, pagConunt: 200)

        let book2 = Book.init(title: "ABC", authear: "Noura", readingAge: 18, pagConunt: 120)

        let book3 = Book.init(title: "ABC", authear: "Ahmed", readingAge: 8, pagConunt: 90)


        let allBooks = [book1,book2,book3]

        
        let result = allBooks.filter { $0.authear.starts(with: "Huda") }
        print(result)

    }

}

