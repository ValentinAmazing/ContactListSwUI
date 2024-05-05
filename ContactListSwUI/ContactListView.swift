import SwiftUI

struct ContactListView: View {
    let persons: [Person]

    private let title = "Contact List"

    var body: some View {
        NavigationStack{
            List(persons, id: \.phoneNumber) {
                NavigationLink(
                    $0.fullName,
                    destination: PersonDetailsView(person: $0))
            }
            .listStyle(.plain)
            .navigationTitle(title)
        }
    }
    
}

#Preview {
    ContactListView(
        persons: Person.getContactList()
    )
}
