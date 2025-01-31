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
                    
                    GroupBox(
                        label: SettingsLabelView(title: "Applications", image: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Bhavin")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "Credo Academy", linkDestination: "credo.academy")
                        SettingsRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "4.0")
                        SettingsRowView(name: "Version", content: "1.5.0")
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
