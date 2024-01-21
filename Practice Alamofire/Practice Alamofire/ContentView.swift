//
//  ContentView.swift
//  Practice Alamofire
//
//  Created by bibiga on 1/21/24.
//

import SwiftUI
import Alamofire

struct WeatherResponse: Codable {
    let main: Main
}

struct Main: Codable {
    let temp: Double
}

struct ContentView: View {
    @State private var temperature: Double = 0.0
    @State private var isLoading: Bool = false
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .scaleEffect(2)
                    .padding()
            } else {
                Text("대구의 현재 온도")
                    .font(.title)
                    .padding()
                
                Text("\(temperature)°C")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
            }
            
            Button(action: {
                fetchWeather()
            }) {
                Text("날씨 정보 가져오기")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
    
    func fetchWeather() {
        isLoading = true
        
        let url = "https://api.openweathermap.org/data/2.5/weather?q=Daegu&appid=e83699def4a5cd0e1a93c02b28629826"
        
        AF.request(url)
            .validate()
            .responseDecodable(of: WeatherResponse.self) { response in
                isLoading = false
                
                switch response.result {
                case .success(let weather):
                    temperature = weather.main.temp - 273.15 // 온도를 켈빈에서 섭씨로 변환
                case .failure(let error):
                    print("날씨 정보를 가져오는데 실패했습니다: \(error.localizedDescription)")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



