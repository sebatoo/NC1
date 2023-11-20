//
//  AppModel.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import Foundation
import SwiftUI

class AppModel: Identifiable {
    var id: UUID = UUID()
    
    var name: String
    var icon: String
    var description: String
    var image: String
    var banner: String
    var headline: String
    var caption: String
    var color: Color
    
    init(name: String, icon: String, description: String, image: String = "noImage", banner: String = "OUR FAVORITES", headline: String = "Try this popular app!", caption: String = "Rising in popularity.", color: Color = .gray) {
//        self.id
        self.name = name
        self.icon = icon
        self.description = description
        self.image = image
        self.banner = banner
        self.headline = headline
        self.caption = caption
        self.color = color
    }
}
