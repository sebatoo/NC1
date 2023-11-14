//
//  AppCard.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 14/11/23.
//

import SwiftUI

struct AppCard: View {
    
    let app: AppModel
    
    var body: some View {
        ZStack {
//            Color(.blue)
//                .frame(width: 300)
            Image(app.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
//                .frame(width: 350, height: 450)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/))
                .padding()
                .background(Color(.blue))
            Text(app.name)
        }
    }
}

#Preview {
    AppCard(app: AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app.", image: "duolingoImage", banner: "Now available"))
}
