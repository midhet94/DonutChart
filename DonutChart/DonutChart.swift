//
//  ContentView.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import SwiftUI
import Charts

struct DonutChart: View {
    @Environment(\.donutChartOuterRadius) var donutChartOuterRadius
    @Binding var selectedItem: Item
    
    var items: [Item]
    
    var body: some View {
        NavigationStack {
            VStack {
                Chart {
                    ForEach(items) { item in
                        SectorMark(angle: .value("Percentage", item.percentage),
                                   innerRadius: .ratio(0.618),
                                   outerRadius: item == selectedItem ? .fixed(donutChartOuterRadius) : 120,
                                   angularInset: 2)
                        .foregroundStyle(item.color)
                        .donutChartAnnotation(text: item.color.description.capitalized)
                    }
                }
            }
            .padding()
            .navigationTitle("Donut Chart")
        }
    }
}

extension EnvironmentValues {
    var donutChartOuterRadius: CGFloat {
        get { 150 }
    }
}

extension ChartContent {
    func donutChartAnnotation(text: String) -> some ChartContent {
        self
            .annotation(position: .overlay) {
                Text(text)
                    .font(.body)
                    .padding(.horizontal, 10)
                    .foregroundStyle(.white)
                    .background(.black)
            }
    }
}

#Preview {
    DonutChart(selectedItem: .constant(Item.preview().first!),
               items: Item.preview())
}
