//
//  FruitModel.swift
//  Fructus
//
//  Created by Bhavin Bhadani on 27/01/25.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
