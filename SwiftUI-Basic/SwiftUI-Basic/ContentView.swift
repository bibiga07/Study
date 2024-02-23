//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by bibiga on 2/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ImageView()
            ButtonView()
            TextView()
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

#Preview {
    ContentView()
}
