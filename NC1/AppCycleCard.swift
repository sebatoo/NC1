//
//  AppCycleCard.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

let duolingo: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.")
let duolingo2: AppModel = AppModel(name: "Duolingo", icon: "duolingoImage", description: "The language learning app", image: "duolingoIcon", headline: "Learn a new language!", caption: "Now with even more languages.", color: .green)
let duolingo3: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.", color: .green)
let duolingo4: AppModel = AppModel(name: "Duolingo", icon: "duolingoImage", description: "The language learning app", image: "duolingoIcon", headline: "Learn a new language!", caption: "Now with even more languages.", color: .green)
let duolingo5: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.", color: .green)

struct AppCycleCard: View {
    
    let apps: [AppModel]
    
    @State private var offsetLeft: CGFloat = 0
    @State private var offsetRight: CGFloat = -1000
    
    var body: some View {
        
//        let icons: [String] = apps.map { $0.icon }
//        let colors: [Color] = apps.map { $0.color }
        
//        let appsLeft = Array(apps.prefix((apps.count / 2)))
//        let appsRight = Array(apps.suffix(from: apps.count / 2))
        
        ZStack(alignment: .bottomLeading) {
            Color(.blue) // This should be multicolor and animated
                .opacity(0.8)
            VStack() {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                GeometryReader { geometry in
                    VStack {
                        HStack {
                            ForEach(0..<1000) { _ in
                                ForEach(apps) { app in
                                    Image(app.icon)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 110, height: 110)
                                        .clipShape(RoundedRectangle(cornerRadius: 23))
                                        .padding([.leading, .bottom])
                                }
                            }
                        }
                        .offset(x: self.offsetLeft)
                        .onAppear {
                            startAnimation()
                        }
                        .onDisappear {
                            // Reset offset when the view disappears (animation completes)
                            self.offsetLeft = 0
                        }
                        HStack {
                            ForEach(0..<1000) { _ in
                                ForEach(apps) { app in
                                    Image(app.icon)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 110, height: 110)
                                        .clipShape(RoundedRectangle(cornerRadius: 23))
                                        .padding(.leading)
                                }
                            }
                        }
                        .offset(x: self.offsetRight)
                        .onDisappear {
                            // Reset offset when the view disappears (animation completes)
                            self.offsetRight = -1000
                        }

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
        withAnimation(Animation.linear(duration: 20.0).repeatForever(autoreverses: false)) {
            self.offsetLeft -= CGFloat(apps.count) * 100
            self.offsetRight += CGFloat(apps.count) * 100
        }
    }
    
}

#Preview {
    //AppCycleCard()
    AppCycleCard(apps: [duolingo, duolingo, duolingo2, duolingo])
}
