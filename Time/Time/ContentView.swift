//
//  ContentView.swift
//  Time
//
//  Created by bibiga on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    let date = Date()
    @State var timeRemaining: Int = 100
    var body: some View {
        ZStack {
            Text(String(timeRemaining))
                .font(.system(size: 50))
        }
    }
}

#Preview {
    ContentView()
}
