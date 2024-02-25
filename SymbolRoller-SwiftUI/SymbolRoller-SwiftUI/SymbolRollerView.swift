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
            
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .padding()
            
            Spacer()
            
            Text(imageName)
                .font(.system(size: 40, weight: .bold,design: .default))
            
            Button {
                imageName = symbols.randomElement()!
            } label: {
                HStack {
                    Image(systemName: "arrow.3.trianglepath")
                    VStack {
                        Text("Reload")
                            .font(.system(size: 30, weight: .bold, design: .default))
                        Text("click me to reload")
                    }
                }
            }
            .foregroundStyle(.white)
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.pink)
            .cornerRadius(40)
        }
    }
}

#Preview {
    SymbolRollerView()
}
