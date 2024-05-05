import SwiftUI

struct ContentView: View {
    
    private let contactList = Person.getContactList()
    
    var body: some View {
        ContactListView(persons: contactList)
    }
}

#Preview {
    ContentView()
}
