//
//  ContentView.swift
//  tossbank
//
//  Created by bibiga on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                Color.gray.opacity(0.2)
                ScrollView {
                    goTossbank()
                    moneyList()
                }
                .padding(.top, 70)
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
