//
//  ContentView.swift
//  SwiftUIDashWeather
//
//  Created by İbrahim Bayram on 12.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = true
    
    private var days = [WeatherModel(temperature: 22, day: "TUE"),WeatherModel(temperature: 34, day: "WED"),WeatherModel(temperature: 18, day: "THU"),WeatherModel(temperature: 6, day: "FRI"),WeatherModel(temperature: -9, day: "SAT")]
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                CityNameText(cityName: "Cupertino,CA")
                MainWeatherStatusView(temperature: 76, imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                .padding(.bottom,40)
                HStack(spacing: 20){
                    ForEach(days) { day in
                        WeatherDayView(dayOfWeek: day.day, imageName: day.weatherImage, temperature: day.temperature)
                    }
                }
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButtonLabel(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








