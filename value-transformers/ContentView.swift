//
//  ContentView.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var users: [User]

    var body: some View {
        NavigationSplitView { 
            List {
                ForEach(users) { user in
                    NavigationLink {
                        UserInfoView(user: user)
                    } label: {
                        Text("\(user.name) (\(user.balance)$)")
                    }
                }
                .onDelete(perform: deleteUsers)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addUser) {
                        Label("Add User", systemImage: "person.fill.badge.plus")
                    }
                }
            }
        } detail: {
            Text("Select user")
        }
    }

    private func addUser() {
        withAnimation {
            let newUser = User(name: "James", balance: 0)
            modelContext.insert(newUser)
        }
    }

    private func deleteUsers(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(users[index])
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: User.self, inMemory: true)
}
