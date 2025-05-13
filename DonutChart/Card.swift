//
//  Card.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 13/05/25.
//

import SwiftUI

struct Card<Content: View>: View {
    let content: Content
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.white
            
            content
                .padding(16)
        }
        .border(.gray, width: 0.5)
        .fixedSize(horizontal: true, vertical: true)
    }
}

#Preview {
    Card(content: Text("Hello World"))
}
