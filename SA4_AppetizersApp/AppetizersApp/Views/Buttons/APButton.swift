//
//
// AppetizersApp
// APButton.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct APButton: View {
    
    // MARK: - Properties
    
    let title: LocalizedStringKey
    
    var body: some View {
        Button {
            print("button tapped")
            
        } label: {
            Text(title)
                .font(.title3).fontWeight(.semibold)
                .frame(width: 260, height: 50)
        }
        .buttonStyle(.borderedProminent)
        .tint(.brandPrimary)
        .padding(.bottom, 30)
    }
}

#Preview {
    APButton(title: "Test Title")
}
