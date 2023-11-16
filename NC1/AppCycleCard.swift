//
//  AppCycleCard.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

let duolingo: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with even more languages.")

struct AppCycleCard: View {
    
    let apps: [AppModel]
    
    
//    var icons: [String]
//    var colors: [Color]
    
    var body: some View {
        
        var icons: [String] = []
        
//        ForEach(apps, id: \.self) { app in
//            icons.append(app.icon)
//        }
        ZStack(alignment: .bottomLeading) {
            Color(.blue)
                .opacity(0.8)
            VStack() {
                Spacer()
                Spacer() // apps
                Spacer() // apps
                Spacer()
                VStack(alignment: .leading) {
                    Text("OUR FAVORITES")
                        .font(.subheadline)
                        .foregroundStyle(.white.opacity(0.8))
                        .bold()
                    Text("Apps you should check out")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .bold()
                }
                .padding()
            }
        }
        .frame(width: 350, height: 430)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.07), radius: 10)
    }
}

#Preview {
    //AppCycleCard()
    AppCycleCard(apps: [duolingo, duolingo, duolingo, duolingo, duolingo])
}
