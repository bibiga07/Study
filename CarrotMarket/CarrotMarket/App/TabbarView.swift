//
//  TabbarView.swift
//  CarrotMarket
//
//  Created by bibiga on 1/21/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    VStack {
                        Image(systemName: "house.fill")
                        Text("홈")
                    }
                }
            NewsView()
                .tabItem {
                    VStack {
                        Image(systemName: "newspaper")
                        Text("동네생활")
                    }
                }
            MyAroundView()
                .tabItem {
                    VStack {
                        Image(systemName: "mappin.and.ellipse")
                        Text("내 근처")
                    }
                }
            ChattingView()
                .tabItem {
                    VStack {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("채팅")
                    }
                }
            ProfileView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("나의 당근")
                    }
                }
        }
    }
}

#Preview {
    TabbarView()
}
