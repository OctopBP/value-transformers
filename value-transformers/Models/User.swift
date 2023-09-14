//
//  User.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftData
import Foundation

@Model
final class User {
    var name: String
    
    @Attribute(.transformable(by: WalletTransformer.self))
    var wallet: Wallet
    
    init(name: String, wallet: Wallet) {
        self.name = name
        self.wallet = wallet
    }
}
