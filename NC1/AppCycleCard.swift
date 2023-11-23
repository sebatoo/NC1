//
//  AppCycleCard.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

let duolingo: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.")
let tiktok: AppModel = AppModel(name: "TikTok", icon: "tiktokIcon", description: "Discover videos from around the world", image: "tiktokImage", headline: "Watch, discover and stream!", caption: "Find what you love.", color: .black)
let netflix: AppModel = AppModel(name: "Netflix", icon: "netflixIcon", description: "The most talked about shows and films", image: "netflixImage", headline: "Start watching.", caption: "Enjoy recent hits.", color: .red)
let instagram: AppModel = AppModel(name: "Instagram", icon: "instagramIcon", description: "Photo & Video", image: "instagramImage", headline: "Bringing you closer.", caption: "Connect and share with friends!", color: .orange)
let roblox: AppModel = AppModel(name: "Roblox", icon: "robloxIcon", description: "Join millions of experiences", image: "robloxImage", headline: "The ultimate virtual universe!", caption: "Be anything you can imagine.", color: .gray)
let pokemonGo: AppModel = AppModel(name: "Pokémon GO", icon: "pokemongoIcon", description: "Epic AR adventure", image: "pokemongoImage", headline: "Catch your favorite Pokémon!", caption: "Complete the Pokédex.", color: .blue)
let disneyPlus: AppModel = AppModel(name: "Disney+", icon: "disneyplusIcon", description: "Watch movies, series and more", image: "disneyplusImage", headline: "Something for everyone", caption: "Endless entertainment.", color: .blue)
let whatsapp: AppModel = AppModel(name: "WhatsApp", icon: "whatsappIcon", description: "Simple. Reliable. Private.", image: "whatsappImage", headline: "FREE messaging and video calling", caption: "Private messaging across the world.", color: .green)

struct AppCycleCard: View {
    
    let apps: [AppModel]
    
    @State private var offsetLeft: CGFloat = 0
    
    var body: some View {
        let appsReversed : [AppModel] = apps.reversed()
//        let icons: [String] = apps.map { $0.icon }
//        let colors: [Color] = apps.map { $0.color }
        
//        let appsLeft = Array(apps.prefix((apps.count / 2)))
//        let appsRight = Array(apps.suffix(from: apps.count / 2))
        
        ZStack(alignment: .bottomLeading) {
            Color(.blue) // This should be multicolor and animated
                .opacity(0.8)
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                GeometryReader { geometry in
                    VStack {
                        HStack {
                            ForEach(apps) { app in
                                Image(app.icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 110, height: 110)
                                    .clipShape(RoundedRectangle(cornerRadius: 23))
                                    .padding(.leading)
                            }
                        }
                        .offset(x: self.offsetLeft + 150)
                        Spacer()
                        HStack {
                            ForEach(appsReversed) { app in
                                Image(app.icon)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 110, height: 110)
                                    .clipShape(RoundedRectangle(cornerRadius: 23))
                                    .padding(.leading)
                            }
                        }
                        .offset(x: self.offsetLeft - 70 + 150)

                    }
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .onAppear {
                        startAnimation()
                    }
                    .onDisappear {
                        // Reset offset when the view disappears (animation completes)
                        self.offsetLeft = 0
                    }
                }
                VStack(alignment: .leading) {
                    Text("POPULAR NOW")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.8))
                        .bold()
                    Text("Apps you should check out")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .bold()
                }
                .padding()
                .frame(width: 350)
            }
            
        }
        .frame(width: 350, height: 430)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.07), radius: 10)
    }
    
    
    func startAnimation() {
        withAnimation(Animation.linear(duration: 20.0).repeatForever(autoreverses: true)) {
            self.offsetLeft -= CGFloat(apps.count - 1) * 70
        }
    }
    
}

#Preview {
    //AppCycleCard()
    AppCycleCard(apps: sampleApps)
}
