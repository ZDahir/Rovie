//
//  Item.swift
//  Rovie
//
//  Created by Zaid Dahir on 2024-04-19.
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
