//
//  GamesTab.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

struct GamesTab: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                AppCarousel(app: duolingo)
            }
            .navigationTitle("Games")
        }
    }
}

#Preview {
    GamesTab()
}
