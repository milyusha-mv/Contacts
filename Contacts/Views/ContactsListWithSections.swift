//
//  ContactsListWithSections.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import SwiftUI

struct ContactsListWithSections: View {
    var contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(contacts, id: \.self) {contact in
                    Section(header: Text("\(contact.name) \(contact.surname)")) {
                        ContactRow(contact: contact)
                    }
                }
            }
            .navigationTitle("Persons list")
        }
    }
}

struct ContactsListWithSections_Previews: PreviewProvider {
    static var previews: some View {
        let contacts = Contact.getPersons()
        ContactsListWithSections(contacts: contacts)
    }
}
