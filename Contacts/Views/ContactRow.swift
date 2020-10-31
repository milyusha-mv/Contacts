//
//  ContactRow.swift
//  Contacts
//
//  Created by Михаил Милюша on 31.10.2020.
//

import SwiftUI

struct ContactRow: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            VStack() {
                HStack() {
                    Image(systemName: "phone.fill")
                    Text("\(contact.phone)")
                        .offset(x: 20)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Color(.systemGray5)
                        .frame(width: 320, height: 1)
                }
                HStack {
                    Image(systemName: "mail.fill")
                    Text("\(contact.email)")
                        .offset(x: 20)
                    Spacer()
                }
            }
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Contact(name: "Test", surname: "Test", email: "1", phone: "2"))
    }
}
