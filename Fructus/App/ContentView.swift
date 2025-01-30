//
//  ContentView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 25/01/25.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSettings = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                            .alignmentGuide(.listRowSeparatorLeading) { d in
                                d[.leading]
                            }
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitle("Fruits")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }
    }
}

#Preview {
    ContentView()
}
