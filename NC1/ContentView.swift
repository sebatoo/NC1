//
//  ContentView.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let duolingo: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.")
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            AppCard(app: duolingo)
            AppCard(app: duolingo)
            AppCard(app: duolingo)
            AppCard(app: duolingo)
        }
        .padding()
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
