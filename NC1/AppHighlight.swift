//
//  AppHighlight.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 22/11/23.
//

import SwiftUI

struct AppHighlight: View {
    @State private var currentIndex: Int = 0
    @State private var rows: [GridItem] = [
        GridItem(.fixed(80)),
        GridItem(.fixed(80)),
        GridItem(.fixed(80))
    ]
    let apps: [AppModel]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(apps) { app in
                    VStack(alignment: .trailing, spacing: 15) {
                        AppItem(app: app)
                        Divider()
                            .frame(width: 280)
                    }
                }
            }
        }
        .content.offset(x: CGFloat(currentIndex * -360 + 180))
        .gesture(
            DragGesture()
                .onEnded { value in
                    withAnimation(Animation.easeOut(duration: 0.2)) {
                        if value.translation.width < 0 && currentIndex * 3 + 2 < apps.count - 1 {
                            self.currentIndex += 1
                        }
                        else if value.translation.width > 0 && self.currentIndex > 0 {
                            self.currentIndex -= 1
                        }
                    }
                }

        )
    }
}

struct AppItem: View {
    
    let app: AppModel
    
    var body: some View {
        HStack {
            Image(app.icon)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 13))
            VStack(alignment: .leading) {
                Text(app.name)
                    .font(.title3)
                Text(app.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
//            Spacer()
//            Spacer()
//            Spacer()
            VStack {
                Button("Get") {}
                    .frame(minWidth: 70, minHeight: 30)
                    .background(Capsule().fill(.secondary).opacity(0.1))
                //.buttonStyle(.bordered)
                    .fontWeight(.bold)
                //.clipShape(Capsule())
                Text("In-App Purchases")
                    .font(.custom("small", size: 9))
                    .opacity(0.8)
                    .foregroundStyle(.secondary)
            }
        }
        .frame(width: 350)
    }
}

#Preview {
    AppHighlight(apps: sampleApps)
}
