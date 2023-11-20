//
//  TodayTab.swift
//  NC1
//
//  Created by Gustavo Sebastian Leon Cortez on 16/11/23.
//

import SwiftUI

struct TodayTab: View {
    
    let duolingo: AppModel = AppModel(name: "Duolingo", icon: "duolingoIcon", description: "The language learning app", image: "duolingoImage", headline: "Learn a new language!", caption: "Now with more languages than ever.")
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                AppCard(app: duolingo)
//                AppCycleCard(apps: [duolingo, duolingo, duolingo, duolingo])
                AppCard(app: duolingo)
//                AppCycleCard(apps: [duolingo, duolingo, duolingo, duolingo])
            }
            .navigationTitle("Today")
            .navigationBarTitleDisplayMode(.large)
//            .padding(.bottom, 83)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    TodayTab()
}
