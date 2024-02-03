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
            Text(convertSecondsToTime(timeInSeconds:timeRemaining))
                .font(.system(size: 50))
        }
    }
    
    func convertSecondsToTime(timeInSeconds: Int) -> String {
            let hours = timeInSeconds / 3600
            let minutes = (timeInSeconds - hours*3600) / 60
            let seconds = timeInSeconds % 60
            return String(format: "%02i:%02i:%02i", hours,minutes,seconds)
        }
}

#Preview {
    ContentView()
}
