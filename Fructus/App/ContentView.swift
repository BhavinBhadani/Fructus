//
//  ContentView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 25/01/25.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationBarTitle("Fruits")
        }
    }
}

#Preview {
    ContentView()
}
