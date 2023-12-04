//
//  Item.swift
//  Test
//
//  Created by 鈴木大輝 on 2023/12/04.
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
