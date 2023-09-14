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
            Text("Balance: \(user.wallet.balance)$")
            
            Button("Add 100") {
                user.wallet.add(amount: 100)
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    UserInfoView(user: User(name: "James", wallet: Wallet(balance: 100)))
        .modelContainer(for: User.self, inMemory: true)
}
