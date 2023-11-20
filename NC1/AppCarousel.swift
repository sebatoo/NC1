//
//  AppCarousel.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 20/11/23.
//

import SwiftUI

struct AppCarousel: View {
    let app: AppModel
    
    var body: some View {
        ScrollView(.horizontal) {
            AppSwipeCard(app: app)        }
    }
}

struct AppSwipeCard: View {
    let app: AppModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(app.banner)
                .bold()
                .foregroundStyle(.blue)
                .font(.caption2)
            Text(app.name)
                .font(.title2)
            Text(app.headline)
                .font(.title2)
                .foregroundStyle(.secondary)
            ZStack(alignment: .bottomLeading) {
                Image(app.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 350, height: 228)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.clear, Color.clear, Color.black.opacity(0.5), Color.black.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .mask(Image(app.image)
                                .resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 5)))
                    )
                HStack(alignment: .top) {
                    Spacer()
                    Image(app.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .clipShape(RoundedRectangle(cornerRadius: 7))
                    VStack(alignment: .leading) {
                        Text(app.name)
                            .bold()
                            .font(.subheadline)
                        Text(app.description)
                            .font(.footnote)
                    }
                    .foregroundStyle(.white)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    VStack {
                        Button("Get") {}
                            .frame(minWidth: 70, minHeight: 30)
                            .background(Capsule().fill(.white).opacity(0.4))
                        //.buttonStyle(.bordered)
                            .fontWeight(.bold)
                        //.clipShape(Capsule())
                        Text("In-App Purchases")
                            .font(.custom("small", size: 9))
                            .opacity(0.8)
                    }
                    .foregroundStyle(.white)
                    Spacer()
                }
                .frame(minWidth: 350, minHeight: 55)
            }
        }
        
    }
}

#Preview {
    AppCarousel(app: duolingo)
}
