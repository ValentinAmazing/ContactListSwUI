
import SwiftUI

struct PersDataView: View {
    let person: Person!
    
    var body: some View {
        PersData(icon: "phone", persData: person.phoneNumber)
        PersData(icon: "envelope", persData: person.email)
    }
}

#Preview {
    PersDataView(person: Person.getContactList().first)
}

private struct PersData: View {
    let icon: String
    let persData: String?
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundStyle(.blue)
            Text(persData ?? "no data")
        }
        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
    }
}
