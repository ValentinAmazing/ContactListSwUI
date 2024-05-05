import SwiftUI

struct ContactListView: View {
    let title: String
    let persons: [Person]

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
        title: "Title",
        persons: Person.getContactList()
    )
}
