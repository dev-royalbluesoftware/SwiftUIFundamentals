//
//
// SwiftUI-CodeExamples
// ContentView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct ContentView: View {
    
    @State private var notifications = true
    @State private var darkMode = false
    @State private var soundEnabled = true
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ScrollView(.vertical) {
            GroupBox("Basic Information") {
                Text("This is a simple group box")
                Text("It helps organize related content")
            }
            
            GroupBox("User Settings") {
                VStack(alignment: .leading) {
                    Toggle("Push Notifications", isOn: $notifications)
                    Toggle("Dark Mode", isOn: $darkMode)
                    Toggle("Sound Effects", isOn: $soundEnabled)
                }
                .padding(.vertical, 5)
            }
            
            GroupBox {
                HStack {
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(.blue)
                    VStack(alignment: .leading) {
                        Text("John Doe")
                            .font(.headline)
                        Text("Software Developer")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding(5)
            } label: {
                Label("Profile", systemImage: "person.fill")
                    .foregroundColor(.blue)
            }
            
            GroupBox("Device Information") {
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Model:")
                            .bold()
                        Text("iPhone 14 Pro")
                    }
                    
                    HStack {
                        Text("Storage:")
                            .bold()
                        Text("256GB")
                    }
                    
                    HStack {
                        Text("iOS Version:")
                            .bold()
                        Text("17.0")
                    }
                }
                .padding(5)
            }
            
            GroupBox("Shopping Cart") {
                VStack {
                    GroupBox("Items") {
                        VStack(alignment: .leading) {
                            Text("MacBook Pro - $1299")
                            Text("AirPods Pro - $249")
                            Text("iPhone Case - $39")
                        }
                    }
                    
                    GroupBox("Summary") {
                        HStack {
                            Text("Total:")
                                .bold()
                            Spacer()
                            Text("$1,587")
                                .bold()
                        }
                    }
                }
            }
            
            GroupBox {
                VStack {
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Login") {
                        // Handle login
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.top)
                }
                .padding()
            } label: {
                HStack {
                    Image(systemName: "lock.shield")
                    Text("Secure Login")
                }
                .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    ContentView()
}
