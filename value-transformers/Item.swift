//
//  Item.swift
//  value-transformers
//
//  Created by Boris Proshin on 14.09.2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
