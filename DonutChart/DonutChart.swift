//
//  ContentView.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import SwiftUI
import Charts

struct DonutChart: View {
    var items: [Item]
    
    var body: some View {
        NavigationStack {
            VStack {
                Chart {
                    ForEach(items) { item in
                        SectorMark(angle: .value("Percentage", item.percentage),
                                   innerRadius: .ratio(0.618),
                                   angularInset: 2)
                            .foregroundStyle(item.color)
                    }
                }
            }
            .padding()
            .navigationTitle("Donut Chart")
        }
    }
}

#Preview {
    DonutChart(items: Item.preview())
}
