import SwiftUI

struct ContactListView: View {
    let persons: [Person]

    private let title = "Contact List"

    var body: some View {
        List(persons, id: \.phoneNumber) {
            Text($0.fullName)
        }
        .listStyle(.plain)
        .navigationTitle(title)
    }
    
}

#Preview {
    ContactListView(
        persons: Person.getContactList()
    )
}
