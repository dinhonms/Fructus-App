//
//  FruitModel.swift
//  Fructus
//
//  Created by Raimundo N M Sousa on 04/09/23.
//

import SwiftUI

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}

