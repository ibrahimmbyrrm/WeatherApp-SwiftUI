//
//  WeatherDayView.swift
//  SwiftUIDashWeather
//
//  Created by İbrahim Bayram on 12.09.2023.
//

import Foundation
import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}
