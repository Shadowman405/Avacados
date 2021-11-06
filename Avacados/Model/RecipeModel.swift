//
//  RecipeModel.swift
//  Avacados
//
//  Created by Maxim Mitin on 7.11.21.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
