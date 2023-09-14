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
    var balance: Int
    
    init(name: String, balance: Int) {
        self.name = name
        self.balance = balance
    }
}
