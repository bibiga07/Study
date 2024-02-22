//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by bibiga on 2/22/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("button tapped")
        } label: {
            Text("Click")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 100, height: 100)
        .background(.pink)
        .cornerRadius(20)
    }
}

#Preview {
    ButtonView()
}
