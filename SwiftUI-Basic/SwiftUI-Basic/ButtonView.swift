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
        }
    }
}

#Preview {
    ButtonView()
}
