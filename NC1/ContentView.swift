//
//  ContentView.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
           TodayTab()
                .tabItem {Label("Today", systemImage: "doc.text.image")}
                .navigationTitle("Today")
            GamesTab()
                .tabItem {Label("Games", systemImage: "gamecontroller.fill")}
            AppsTab()
                .tabItem {Label("Apps", systemImage: "square.stack.3d.up.fill")}
            ArcadeTab()
                .tabItem {Label("Arcade", systemImage: "arcade.stick")}
            SearchTab()
                .tabItem {Label("Search", systemImage: "magnifyingglass")}
        }
    }
}

#Preview {
    ContentView()
}
