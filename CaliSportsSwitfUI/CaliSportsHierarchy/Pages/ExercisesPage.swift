//
//  ExercisesPage.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 8.05.2021.
//

import SwiftUI
struct ExercisesPage: View {
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                // MARK: - SECTION
                
                ScheduledWorkoutsSection().padding(.top, 20)
                
                // MARK: - SECTION
                
                InstantWorkoutsSection()
                
                // MARK: - SECTION
                
                ExercisesSection()
                
            } //: VSTACK
            .navigationBarTitle(Text("Exercises"), displayMode: .inline)
            .navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
                Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
            }))
            
        } //: SCROLLVIEW
        .background(Image("women-silhouette-pattern")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all))
    }
}

struct ExercisesPage_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesPage()
    }
}
