//
//  RipeningModel.swift
//  Avacados
//
//  Created by Maxim Mitin on 7.11.21.
//

import SwiftUI

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

