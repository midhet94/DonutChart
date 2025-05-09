//
//  Item.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import Foundation
import SwiftUI

struct Item {
    var id: Int
    var percentage: Int
    var color: Color
    
    static func preview() -> [Item] {
        [
            .init(id: 0, percentage: 10, color: .blue),
            .init(id: 1, percentage: 20, color: .green),
            .init(id: 2, percentage: 30, color: .purple),
            .init(id: 3, percentage: 50, color: .indigo)
            
        ]
    }
}
