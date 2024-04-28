//
//  WeatherView.swift
//  WeatherDemoApp
//
//  Created by Pedro Delmondes  on 05/02/2024.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            VStack {
                VStack(alignment: .leading, spacing: 5){
                    Text("Sao Paulo")
                        .bold()
                        .font(.title)
                    
                    Text("Today, Feb 8, 11:24 PM")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
                
                VStack{
                    HStack{
                        
                        VStack(spacing: 20){
                            Image(systemName:"sun.max")
                                .font(.system(size: 40))
                            
                            Text("Clear")
                            
                        }
                        .frame(width: 150, alignment: .leading)
                        
                        Spacer()
                        
                        Text("23°")
                            .font(.system(size: 100))
                            .fontWeight(.bold)
                            .padding()
                    }
                    
                    Spacer()
                        .frame(height: 80)
                    
                    AsyncImage(url: URL(string: "https://img.freepik.com/free-vector/sao-paulo-skyline-illustration_23-2148794006.jpg")) { image in image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 350)
                        
                    } placeholder: {
                        ProgressView()
                    }

                    Spacer()

                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: 20){
                    
                    Text("Weather now")
                        .bold()
                        .padding(.bottom)
                    
                    
                    
                    HStack{
                        Image("thermometer.sun")
                        Text("18°").font(.system(size: 48))
                        Text("Min temp")
                            .font(.subheadline)
                        
                        Spacer()
                        
                        Image("thermometer.sun")
                        Text("26°").font(.system(size: 48))
                        Text("Max temp")
                            .font(.subheadline)
                        
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .padding(.bottom, 20)
                .foregroundColor(Color(hue: 0.612, saturation: 0.897, brightness: 0.361))
                .background(.white)
                
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        .background(Color(hue: 0.612, saturation: 0.897, brightness: 0.361))
        .preferredColorScheme(.dark)
    }
}

#Preview {
    WeatherView()
}
