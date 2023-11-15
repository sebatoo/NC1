//
//  AppCard.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import SwiftUI

struct AppCard: View {
    
    //let app: AppModel
    let app: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", banner: "Now available")
    
    var body: some View {
        ZStack {
            Color(.gray)
                .frame(width: 350, height: 430)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            VStack {
                ZStack {
                    Image(app.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .mask(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white, Color.white.opacity(0)]), startPoint: .top, endPoint: .bottom))
                }
                ZStack {
                    Color(.black)
                        .opacity(0.2)
                        .frame(height: 73)
                        .clipShape(UnevenRoundedRectangle(cornerRadii: .init(bottomLeading: 15,bottomTrailing: 15)))
                    HStack {
                        Spacer()
                        Image(app.icon)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 48, height: 48)
                            .clipShape(RoundedRectangle(cornerRadius: 10
                                                       ))
                        VStack(alignment: .leading) {
                            Text(app.name)
                                .bold()
                                .font(.subheadline)
                            Text(app.description)
                                .font(.footnote)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                        }
                        .foregroundStyle(.white)
                        Spacer()
                        VStack {
                            Button("Get") {}
                                .frame(minWidth: 70, minHeight: 30)
                                .background(Capsule().fill(Color.secondary))
                                //.buttonStyle(.bordered)
                                .fontWeight(.bold)
                                //.clipShape(Capsule())
                            Text("In-App Purchases")
                                .font(.custom("small", size: 9))
                                .opacity(0.8)
                        }
                        .foregroundStyle(.white)
                        .lineLimit(1)
                        Spacer()
                    }
                }
                .frame(width: 350, height: 80)
            }
        }
    }
}

#Preview {
    //AppCard(app: AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", banner: "Now available"))
    AppCard()
}
