//
//  Item.swift
//  ContactsX
//
//  Created by Richard Pacheco on 8/29/23.
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
