//
//  PersonRow.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import SwiftUI

struct ContactInfoView: View {
    var contact: Contact
    
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                HStack {
                    Text("Phone:")
                    Text("\(contact.phone)")
                    Spacer()
                }
                HStack {
                    Text("Email:")
                    Text("\(contact.email)")
                }
            }
            .offset(x: 0, y: 20)
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text("\(contact.name) \(contact.surname)"), displayMode: .inline)
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Contact(name: "Test", surname: "Test", email: "3", phone: "4"))
    }
}
