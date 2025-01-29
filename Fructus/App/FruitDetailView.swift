//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 28/01/25.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    VStack(alignment: .leading, spacing: 20) {
                        FruitHeaderView(fruit: fruit)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text(fruit.title)
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundStyle(fruit.gradientColors[1])
                            
                            Text(fruit.headline)
                                .font(.headline)
                                .multilineTextAlignment(.leading)
                            
                            FruitNutrientsView(fruit: fruit)
                            
                            Text("Learn more about \(fruit.title)".uppercased())
                                .fontWeight(.bold)
                                .foregroundStyle(fruit.gradientColors[1])
                            
                            Text(fruit.description)
                                .multilineTextAlignment(.leading)
                            
                            SourceLinkView()
                                .padding(.top, 10)
                                .padding(.bottom, 40)
                        }
                        .padding(.horizontal, 20)
                    }
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitleDisplayMode(.inline)
                //.toolbar(.hidden)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
