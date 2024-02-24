//
//  ContentView.swift
//  DataFlow
//
//  Created by bibiga on 2/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

#Preview {
    ContentView()
}
