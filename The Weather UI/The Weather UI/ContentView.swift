//
//  ContentView.swift
//  The Weather UI
//
//  Created by dilpreet singh on 04/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            backgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lighter blue"))
            
            VStack(spacing: 40){
                
                cityTextView(cityName: "Gurdaspur, PB")
                Text("TODAY")
                    .font(.system(size: 30, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .frame(width: 200, height: 15)
                    
                mainWeatherView(weatherImageName: "cloud.sun.fill", temperature: 10)

                HStack (spacing: 15){
                    weatherDayView(dayOfWeek: "TUE", imageName: "aqi.medium", temperature: -20)
                    weatherDayView(dayOfWeek: "WED", imageName: "cloud.rain.fill", temperature: -10)
                    weatherDayView(dayOfWeek: "THU", imageName: "cloud.bolt.rain.fill", temperature: -15)
                    weatherDayView(dayOfWeek: "FRI", imageName: "wind.snow.circle", temperature: 0)
                    weatherDayView(dayOfWeek: "SAT", imageName: "aqi.high", temperature: -30)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                    print("isNight toggled")
                }
            label: {
                weatherLocationButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
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

struct weatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 25, weight: .medium, design: .rounded))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
            Text("\(temperature)")
                .font(.system(size: 30, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

struct backgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [ .blue, Color("lighter blue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View{
    var cityName: String
    var body: some View{
        Text(cityName)
            .font(.system(size: 30, weight: .medium, design: .default))
            .foregroundColor(.white)
            .frame(width: 350, height: 50)
    }
}

struct mainWeatherView: View{
    
    var weatherImageName: String
    var temperature: Int
    var body: some View{
        VStack(spacing: 10){
            Image(systemName: weatherImageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
            
            Text("\(temperature)")
                .font(.system(size: 80, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 10)
    }
}


