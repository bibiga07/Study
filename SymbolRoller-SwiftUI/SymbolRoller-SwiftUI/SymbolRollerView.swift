//
//  SymbolRollerView.swift
//  SymbolRoller-SwiftUI
//
//  Created by bibiga on 2/25/24.
//

import SwiftUI

struct SymbolRollerView: View {
    
    let symbols: [String] = ["sun.min", "moon", "cloud", "wind", "snowflake"]
    
    @State var imageName: String = "moon"
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .padding()
            Text(imageName)
                .font(.system(size: 40, weight: .bold,design: .default))
            Button {
                print(".")
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    
                    VStack {
                        Text("Reload")
                    }
                }
            }
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
    }
}

#Preview {
    SymbolRollerView()
}
