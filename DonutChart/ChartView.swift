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
    var font: Font
    var foregroundColor: Color
    var backgroundColor: Color
    var textPadding: CGFloat
    
    var body: some View {
        Chart {
            ForEach(items) { item in
                SectorMark(angle: .value("Percentage", item.percentage),
                           innerRadius: .ratio(0.618),
                           outerRadius: item == selectedItem ? .fixed(outerRadius) : 120,
                           angularInset: 2)
                    .foregroundStyle(item.color)
                    .annotation(position: .overlay) {
                        Text(item.color.description.capitalized)
                            .font(font)
                            .padding(.horizontal, textPadding)
                            .foregroundStyle(foregroundColor)
                            .background(backgroundColor)
                    }
            }
        }
    }
}

#Preview {
    ChartView(selectedItem: .constant(Item.preview().first!),
              items: Item.preview(),
              outerRadius: 150,
              font: .body,
              foregroundColor: .white,
              backgroundColor: .black,
              textPadding: 10)
}
