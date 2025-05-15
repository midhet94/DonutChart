//
//  Item.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import Foundation
import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let percentage: Int
    let color: Color
    
    static func preview() -> [Item] {
        [
            .init(percentage: 10, color: .blue),
            .init(percentage: 20, color: .green),
            .init(percentage: 30, color: .purple),
            .init(percentage: 50, color: .indigo)
            
        ]
    }
    
    static func previewEmpty() -> [Item] { [] }
}

extension Item: Equatable {
    static func == (lhs: Item, rhs: Item) -> Bool {
        lhs.color == rhs.color
    }
}

extension Item: Hashable {
    
}
