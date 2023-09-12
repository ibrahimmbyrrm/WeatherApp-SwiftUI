//
//  BackgroundView.swift
//  SwiftUIDashWeather
//
//  Created by İbrahim Bayram on 12.09.2023.
//

import Foundation
import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight : Bool
    
    var body: some View {
        LinearGradient(colors: [isNight ? .black : .blue,isNight ? .gray : Color("lightblue")], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
