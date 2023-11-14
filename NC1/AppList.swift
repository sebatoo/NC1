//
//  AppList.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import Foundation

class App {
    var id: UUID = UUID()
    
    var name: String
    var icon: String
    var description: String
    var image: String
    
    init(id: UUID, name: String, icon: String, description: String, image: String) {
        self.name = name
        self.icon = icon
        self.description = description
        self.image = image
    }
}
