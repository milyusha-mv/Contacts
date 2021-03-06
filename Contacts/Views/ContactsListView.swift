//
//  ContactList.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import SwiftUI

struct ContactsListView: View {
    var contacts: [Contact]
    
    var body: some View {
        NavigationView {
            List(contacts, id: \.self) {contact in
                NavigationLink(destination: ContactInfoView(contact: contact)) {
                    Text("\(contact.name) \(contact.surname)")
                }
            }
            .navigationTitle("Persons list")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        let contacts = Contact.getPersons()
        ContactsListView(contacts: contacts)
    }
}
