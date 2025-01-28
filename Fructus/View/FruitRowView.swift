//
//  FruitRowView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 28/01/25.
//

import SwiftUI

struct FruitRowView: View {
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .black.opacity(0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .clipShape(.rect(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}
