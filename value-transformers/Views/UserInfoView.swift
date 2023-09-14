//
//  UserInfoView.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftUI

struct UserInfoView: View {
    var user: User
    
    var body: some View {
        VStack {
            Text(user.name).font(.title)
            Text("Balance: \(user.balance)$")
            
            Button("Add 100") {
                user.balance += 100
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    UserInfoView(user: User(name: "James", balance: 100))
        .modelContainer(for: User.self, inMemory: true)
}
