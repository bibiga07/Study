//
//  StockRankViewModel.swift
//  StockRank_SwiftUI
//
//  Created by bibiga on 2/29/24.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = models.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
