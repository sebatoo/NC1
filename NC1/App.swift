//
//  AppModel.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import Foundation

class AppModel {
    var id: UUID = UUID()
    
    var name: String
    var icon: String
    var description: String
    var image: String
    var banner: String
    
    init(name: String, icon: String, description: String, image: String = "noImage", banner: String = "Popular now") {
        self.name = name
        self.icon = icon
        self.description = description
        self.image = image
        self.banner = banner
    }
}
