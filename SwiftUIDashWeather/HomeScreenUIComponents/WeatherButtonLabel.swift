//
//  WeatherButtonLabel.swift
//  SwiftUIDashWeather
//
//  Created by İbrahim Bayram on 12.09.2023.
//

import Foundation
import SwiftUI

struct WeatherButtonLabel : View {
    
    var title : String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View {
            Text(title)
                .frame(width: 280,height: 50)
                .foregroundColor(.blue)
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(textColor)
                .background(backgroundColor)
                .cornerRadius(10)
    }
}

struct WeatherButtonLabel_Previews : PreviewProvider {
    static var previews: some View {
        WeatherButtonLabel(title: "Test Button", textColor: .blue, backgroundColor: .gray)
    }
}
