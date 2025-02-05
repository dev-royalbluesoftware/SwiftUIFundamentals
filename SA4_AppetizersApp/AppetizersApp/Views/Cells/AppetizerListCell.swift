//
//
// AppetizersApp
// AppetizerListCell.swift
//
// Created by rbs-dev
// Copyright © Royal Blue Software
//

import SwiftUI

struct AppetizerListCell: View {
    
    // MARK: - Properties
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .scaledToFit()
                .frame(width: 120, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2).fontWeight(.medium)
                
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    AppetizerListCell(appetizer: MockAppetizers.sampleAppetizer)
}
