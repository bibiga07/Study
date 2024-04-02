//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by bibiga on 2/27/24.
//

import SwiftUI

struct FrameworkListView: View {
    
    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list) { item in
                        FrameworkCell(framework: item)
                    }
                }
                .padding(16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
    }
}

#Preview {
    FrameworkListView()
}
