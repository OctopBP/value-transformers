//
//  User.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftData

@Model
final class User {
    var name: String
    var wallet: Wallet
    
    init(name: String, wallet: Wallet) {
        self.name = name
        self.wallet = wallet
    }
}
