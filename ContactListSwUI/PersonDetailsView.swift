import SwiftUI

struct PersonDetailsView: View {
    
    let person: Person?
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
            PersDataView(person: person)
        }
        .listStyle(.plain)
        .navigationTitle(person?.fullName ?? "no name")
    }
}

#Preview {
    PersonDetailsView(
        person: Person.getContactList().first
    )
}
