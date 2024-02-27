//
//  StockDetailView.swift
//  StockRank_SwiftUI
//
//  Created by bibiga on 2/27/24.
//

import SwiftUI

struct StockDetailView: View {
    
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 40) {
            Image(stock.imageName)
                .resizable()
                .scaledToFit()
                .frame(width:120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
        }
    }
}

#Preview {
    StockDetailView(stock: .constant(StockModel.list[0]))
        .preferredColorScheme(.dark)
}
