//
//  ContentView.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import SwiftUI

struct TabBarView: View {
    let contacts = Contact.getPersons()
    
    var body: some View {
        TabView {
            ContactsListView(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            ContactsListWithSections(contacts: contacts)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Phones")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
