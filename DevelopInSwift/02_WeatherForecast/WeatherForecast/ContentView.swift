//
//
// WeatherForecast
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack(spacing: 20) {
                    DayForecastView(day: "Mon", isRainy: true,highTemp: 55, lowTemp: 38)
                    
                    DayForecastView(day: "Tue", isRainy: false, highTemp: 88, lowTemp: 60)
                    
                    DayForecastView(day: "Wed", isRainy: false, highTemp: 70, lowTemp: 55)
                    
                    DayForecastView(day: "Thu", isRainy: true, highTemp: 60, lowTemp: 44)
                    
                    DayForecastView(day: "Fri", isRainy: true, highTemp: 60, lowTemp: 44)
                    
                    DayForecastView(day: "Sat", isRainy: true, highTemp: 60, lowTemp: 44)
                    
                    DayForecastView(day: "Sun", isRainy: true, highTemp: 60, lowTemp: 44)
                }
                .padding()
            }
            WeekForecastView(dateRange: "Mon - Sun" , avehighTemp: 60, aveLowTemp: 44)
                .padding()
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecastView: View {
    
    let day: String
    let isRainy: Bool
    let highTemp: Int
    let lowTemp: Int
    
    var iconName: String {
        isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        isRainy ? .blue : .yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(.headline)
            
            Image(systemName: iconName)
                .resizable()
                .foregroundStyle(iconColor)
                .frame(width: 32, height: 32)
                .padding(5)
            
            Text("High: \(highTemp)°")
                .fontWeight(.semibold)
            
            Text("Low: \(lowTemp)°")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
    }
}

struct WeekForecastView: View {
    let dateRange: String
    let avehighTemp: Int
    let aveLowTemp: Int
    
    var body: some View {
        VStack {
            Text(dateRange)
                .font(.headline)
            
            Text("Average High: \(avehighTemp)°")
                .fontWeight(.semibold)
            
            Text("Average Low: \(aveLowTemp)°")
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
    }
}
