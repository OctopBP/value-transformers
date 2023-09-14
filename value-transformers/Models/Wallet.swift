//
//  Wallet.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import SwiftData
import Foundation

final class Wallet {
    var balance: Int
    
    func add(amount: Int) {
        balance += amount
    }
    
    init(balance: Int) {
        self.balance = balance
    }
}


extension WalletTransformer {
    /// The name of the transformer. This is the name used to register the transformer using `ValueTransformer.setValueTrandformer(_"forName:)`.
    static let name = NSValueTransformerName(rawValue: String(describing: WalletTransformer.self))

    /// Registers the value transformer with `ValueTransformer`.
    public static func register() {
        let transformer = WalletTransformer()
        ValueTransformer.setValueTransformer(transformer, forName: name)
    }
}

@objc(WalletTransformer)
final class WalletTransformer: ValueTransformer {
    override class func transformedValueClass() -> AnyClass {
        return Wallet.self
    }
    
    override class func allowsReverseTransformation() -> Bool {
        return true
    }
    
    override func transformedValue(_ value: Any?) -> Any? {
        guard let balance = value as? Int else {
            return nil
        }
        
        return Wallet(balance: balance)
    }
    
    override func reverseTransformedValue(_ value: Any?) -> Any? {
        guard let wallet = value as? Wallet else {
            return nil
        }
        
        return wallet.balance
    }
}
