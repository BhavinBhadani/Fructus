//
//  SettingsView.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 30/01/25.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(
                        label: SettingsLabelView(title: "Fructus", image: "info.circle")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image(.logo)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.rect(cornerRadius: 8))
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                              .font(.footnote)
                        }
                    }
                }
                .navigationTitle("Settings")
                .navigationBarItems(
                    trailing:
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
