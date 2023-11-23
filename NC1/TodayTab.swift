//
//  TodayTab.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

struct TodayTab: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
//                Text("Today")
//                    .font(.largeTitle)
//                    .bold()
//                    Spacer()
                AppCard(app: netflix)
                AppCycleCard(apps: sampleApps)
                AppCard(app: roblox)
                AppCard(app: whatsapp)
            }
            .animation(nil)
//            .transaction { transaction in
//                transaction.animation = nil
//            }
            .navigationTitle("Today")
            .navigationBarTitleDisplayMode(.large)
//            .padding(.bottom, 83)
//            .toolbar{
//                ToolbarItem(placement: .topBarTrailing) {
//                    Button(action: {}) { Image(duolingo.icon).resizable().frame(width: 50, height: 50) }
//                }
//            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TodayTab()
}
