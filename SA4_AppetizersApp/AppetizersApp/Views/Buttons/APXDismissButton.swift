//
//
// AppetizersApp
// APXDismissButton.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//


import SwiftUI

struct APXDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44, height: 44)
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    APXDismissButton()
}
