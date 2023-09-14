//
//  Wallet.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftData

struct Wallet: Codable {
    private(set) var balance: Int
    
    mutating func add(amount: Int) {
        balance += amount
    }
}
