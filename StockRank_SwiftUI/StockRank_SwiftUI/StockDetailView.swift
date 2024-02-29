//
//  StockDetailView.swift
//  StockRank_SwiftUI
//
//  Created by bibiga on 2/27/24.
//

import SwiftUI

struct StockDetailView: View {
    
    @ObservedObject var viewModel: StockRankViewModel
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 40) {

            Text("# of My Favorites: \(viewModel.numOfFavorites)")
                .font(.system(size: 20, weight: .bold, design: .default))
            
            Image(stock.imageName)
                .resizable()
                .scaledToFit()
                .frame(width:120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
            
            Button {
                stock.isFavorite.toggle()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                    .foregroundColor(stock.isFavorite ? .white : .gray)
            }
        }
    }
}

#Preview {
    StockDetailView(viewModel: StockRankViewModel(),stock: .constant(StockModel.list[0]))
        .preferredColorScheme(.dark)
}
