//
//
// SwiftUI-CodeExamples
// AnotherCardView.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
// 


import SwiftUI

struct SpacedCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Using standard spacing metrics
            HStack(spacing: 8) {
                Image(systemName: "star.fill")
                Text("Title")
            }
            .padding(.bottom, 4)
            
            Text("Content")
                .padding(.bottom, 8)
        }
        .padding()
        .background(.background)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    SpacedCardView()
}
