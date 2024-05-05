import SwiftUI

struct ContentView: View {
    private let title = "Contact List"
    private let contactList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactListView(title: title, persons: contactList)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumberListView(title: title, persons: contactList)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
