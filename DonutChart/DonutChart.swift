//
//  ContentView.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import SwiftUI
import Charts

struct DonutChart: View {
    @Binding var selectedItem: Item
    
    var items: [Item]
    var outerRadius: CGFloat
    
    var body: some View {
        NavigationStack {
            VStack {
                Chart {
                    ForEach(items) { item in
                        SectorMark(angle: .value("Percentage", item.percentage),
                                   innerRadius: .ratio(0.618),
                                   outerRadius: item == selectedItem ? .fixed(outerRadius) : 120,
                                   angularInset: 2)
                            .foregroundStyle(item.color)
                            .donutChartAnnotation(text: Text(item.color.description.capitalized))
                    }
                }
            }
            .padding()
            .navigationTitle("Donut Chart")
        }
    }
}

extension ChartContent {
    func donutChartAnnotation(text: Text) -> some ChartContent {
        self
            .annotation(position: .overlay) {
                text
                    .font(.body)
                    .padding(.horizontal, 10)
                    .foregroundStyle(.white)
                    .background(.black)
            }
    }
}

#Preview {
    DonutChart(selectedItem: .constant(Item.preview().first!),
               items: Item.preview(),
               outerRadius: 150)
}
