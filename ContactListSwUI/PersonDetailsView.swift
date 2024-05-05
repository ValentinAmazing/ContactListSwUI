import SwiftUI

struct PersonDetailsView: View {
    
    let person: Person?
    
    var body: some View {
        List {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 200, height: 200)
            PersData(icon: "phone", persData: person?.phoneNumber)
            PersData(icon: "envelope", persData: person?.email)
        }
        .listStyle(.plain)
    }
}

#Preview {
    PersonDetailsView(
        person: Person.getContactList().first
    )
}

struct PersData: View {
    let icon: String
    let persData: String?
    
    var body: some View {
        HStack {
            Image(systemName: icon)
            Text(persData ?? "no data")
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
