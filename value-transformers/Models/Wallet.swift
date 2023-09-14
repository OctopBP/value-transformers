//
//  Wallet.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftData

@Model
final class Wallet {
    var balance: Int
    
    init(balance: Int) {
        self.balance = balance
    }
}
