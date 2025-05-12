//
//  ChartView.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 12/05/25.
//

import SwiftUI
import Charts

struct ChartView: View {
    @Binding var selectedItem: Item
    
    var items: [Item]
    var outerRadius: CGFloat
    
    var body: some View {
        Chart {
            ForEach(items) { item in
                SectorMark(angle: .value("Percentage", item.percentage),
                           innerRadius: .ratio(0.618),
                           outerRadius: item == selectedItem ? .fixed(outerRadius) : 120,
                           angularInset: 2)
                    .foregroundStyle(item.color)
            }
        }
        .frame(width: 350, height: 350)
    }
}

#Preview {
    ChartView(selectedItem: .constant(Item.preview().first!),
              items: Item.preview(),
              outerRadius: 150)
}
