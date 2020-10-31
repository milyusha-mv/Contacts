//
//  Person.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import Foundation

struct Contact: Hashable {
    let name: String
    let surname: String
    let email: String
    let phone: String
}

extension Contact {
    static func getPersons() -> [Contact] {
        var contacts: [Contact] = []
        
        let surnames = DataManager.shared.surnames.shuffled()
        let names = DataManager.shared.names.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        for index in 0...surnames.count - 1 {
            let contact = Contact(
                name: surnames[index],
                surname: names[index],
                email: emails[index],
                phone: phones[index])
            
            contacts.append(contact)
        }
        return contacts
    }
}
