//
//  DonutChartApp.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 09/05/25.
//

import SwiftUI

@main
struct DonutChartApp: App {
    var body: some Scene {
        WindowGroup {
            DonutChart(selectedItem: .constant(Item.preview().first!),
                       items: Item.preview(),
                       outerRadius: 150,
                       font: .body,
                       foregroundColor: .white,
                       backgroundColor: .black,
                       textPadding: 10)
        }
    }
}
