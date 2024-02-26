//
//  StockRankRow.swift
//  StockRank_SwiftUI
//
//  Created by bibiga on 2/26/24.
//

import SwiftUI

struct StockRankRow: View {
    
    var stock: StockModel
    
    var body: some View {
        HStack {
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold))
                .frame(width: 30)
                .foregroundColor(.blue)
            Image("\(stock.imageName)")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
            VStack(alignment: .leading, spacing: 5) {
                Text("\(stock.name)")
                    .font(.system(size: 12))
                    .foregroundColor(.white)
                HStack {
                    Text("\(stock.price) 원")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    Text("\(stock.diff * 100, specifier: "%.2f")%")
                        .font(.system(size: 12))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            
            Spacer()
            
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    StockRankRow(stock: StockModel.list[0])
}
