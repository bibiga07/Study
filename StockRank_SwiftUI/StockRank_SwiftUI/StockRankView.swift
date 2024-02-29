//
//  StockRankView.swift
//  StockRank_SwiftUI
//
//  Created by bibiga on 2/26/24.
//

import SwiftUI

struct StockRankView: View {
    
//    @State var list = StockModel.list
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.models, id: \.self) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: vm, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

#Preview {
    StockRankView()
        .preferredColorScheme(.dark)
}
