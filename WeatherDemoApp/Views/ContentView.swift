//
//  ContentView.swift
//  WeatherDemoApp
//
//  Created by Pedro Delmondes  on 03/02/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack{
            
            if let location = locationManager.location{
                Text("Your coordinates are: \(location.longitude),\(location.latitude)")
            } else {
                if locationManager.isLoading{
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.612, saturation: 0.897, brightness: 0.361))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
