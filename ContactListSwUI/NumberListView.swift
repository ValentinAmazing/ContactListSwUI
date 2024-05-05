import SwiftUI

struct NumberListView: View {
    let title: String
    let persons: [Person]
        
    var body: some View {
        NavigationStack{
            List {
                ForEach(persons, id: \.phoneNumber) { person in
                    Section(header: Text(person.fullName)) {
                        PersDataView(person: person)
                    }
                }
            }
            .navigationTitle(title)
        }
    }
}


#Preview {
    NumberListView(
        title: "Title",
        persons: Person.getContactList()
    )
}
