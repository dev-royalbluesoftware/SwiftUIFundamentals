//
//
// TwoWayBindings
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    
    // MARK: - @State Properties
    
    @State private var pressCount = 0
    @State private var toggleIsOn = false
    @State private var name = ""
    @State private var selectedColor: Color = .yellow
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    
    var body: some View {
        VStack {
            Text("Press Count: \(pressCount)")

            HStack {
                Button("Press Me") {
                    pressCount += 1
                }
                
                Button("Reset Count") {
                    pressCount = 0
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.indigo)
            
            Spacer()
            
            TextField("Enter a name...", text: $name)
                .textFieldStyle(.roundedBorder)
            
            Text("Name entered: \(name)")

            Divider()
                .padding(.horizontal)
            
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "On" : "Off")", isOn: $toggleIsOn)
            
            Divider()
                .padding(.horizontal)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
                .clipShape(.rect(cornerRadius: 20))
            
            ColorPicker("Pick a Rectangle color: ", selection: $selectedColor)
            
            Divider()
                .padding(.horizontal)
            
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            
            Text("Selected Date: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Divider()
                .padding(.horizontal)
            
            Spacer()
            
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Divider()
                .padding(.horizontal)
            
            Spacer()
            
            Slider(value: $sliderValue, in: 0...100) {
                // Accessibility Label
            } minimumValueLabel: {
                Image(systemName: "speaker.minus")
//                Text("0")
                
            } maximumValueLabel: {
                Image(systemName: "speaker.plus")
//                Text("100")
            }
            
            Text("Slider value: \(sliderValue.formatted(.number.precision(.fractionLength(2))))%")
            
            // format specifier strings
            Text("Slider value: \(String(format: "%.1f", sliderValue))%")
            
            Text("Slider value: \(Int(sliderValue))%")
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
