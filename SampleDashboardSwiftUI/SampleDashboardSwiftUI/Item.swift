//
//  Item.swift
//  SampleDashboardSwiftUI
//
//  Created by Rajesh Mani on 02/12/23.
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
