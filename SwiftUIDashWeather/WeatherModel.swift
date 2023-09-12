//
//  WeatherModel.swift
//  SwiftUIDashWeather
//
//  Created by İbrahim Bayram on 12.09.2023.
//

import Foundation
import SwiftUI

struct WeatherModel : Identifiable{
    var id = UUID()
    var temperature : Int
    var day : String
    var weatherImage : String {
        switch temperature {
        case -10...0:
            return "cloud.snow.fill"
        case 0...10:
            return "cloud.rain.fill"
        case 10...25:
            return "cloud.sun.fill"
        case 25...40:
            return "sun.max.fill"
        default:
            return "cloud.sun.fill"
        }
    }
}
