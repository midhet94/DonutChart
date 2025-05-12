//
//  ContentView.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import SwiftUI


struct DonutChart: View {
    var body: some View {
        @State var selectedItem: Item = Item.preview().first!
        
        NavigationStack {
            VStack {
                ChartView(selectedItem: $selectedItem,
                          items: Item.preview(),
                          outerRadius: 150)
            }
            .padding()
            .navigationTitle("Donut Chart")
        }
    }
}

#Preview {
    DonutChart()
}
