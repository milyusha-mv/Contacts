//
//  DataManager.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import Foundation
class DataManager {
    static let shared = DataManager()
    init () {}
    
    let surnames = [
            "Smith", "Johnson", "Williams",
            "Brown", "Jones", "Miller",
            "Davis", "Garcia", "Rodriguez",
            "Wilson"
        ]
        
    let names = [
            "Noah", "Liam", "William",
            "Mason", "James", "Benjamin",
            "Jacob", "Michael", "Elijah",
            "Ethan"
        ]
        
    let emails = [
            "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
            "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
            "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
            "llll@mail.ru"
        ]
        
    let phones = [
            "745396026", "145036843", "287185656", "293520954",
            "562880225", "738594072", "825654134", "645898473",
            "432349845", "459477625"
        ]
}
