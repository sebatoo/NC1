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
                Spacer()
                Spacer()
                AppCarousel(apps: [pokemonGo, netflix, disneyPlus, tiktok])
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Divider()
                    .frame(width: 350)
                HStack {
                    Text("What We're Playing")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button("See All") {}
                }
                .frame(width: 350)
                AppHighlight(apps: [instagram, roblox, whatsapp, duolingo])
            }
            .navigationTitle("Games")
        }
    }
}

#Preview {
    GamesTab()
}
