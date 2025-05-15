//
//  DonutChartViewModel.swift
//  DonutChart
//
//  Created by Midhet Sulemani on 15/05/25.
//

import Foundation

struct ResponseData<T: Hashable> {
    let data: T
}

class DonutChartViewModel {
    func loadData() async throws -> [Item] {
        var response = ResponseData(data: Item.previewEmpty())
        
        do {
            response = try await fetchItems()
        } catch {
            throw error
        }
        
        return response.data
    }
    
    func fetchItems() async throws -> ResponseData<[Item]> {
        return try await withCheckedThrowingContinuation { continuation in
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
                continuation.resume(returning: ResponseData(data: Item.preview()))
            }
        }
    }
}
