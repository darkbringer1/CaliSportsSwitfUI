//
//  ExercisesView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ExercisesView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    
                    //MARK: -SECTION
                    
                    ScheduledWorkoutsSection()
                    
                    //MARK: -SECTION
                    
                    InstantWorkoutsSection()
                    
                    //MARK: -SECTION
                    
                    ExercisesSection()
                    
                }//:VSTACK
                .navigationBarTitle(Text("CaliSports"),displayMode: .large)
                .navigationBarItems(trailing:
                                        Button(
                                            action: {
                                                
                                            },
                                            label: {
                                                Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
                                            }
                                    ))
            }//:SCROLLVIEW
            
        }//:NAVIGATIONVIEW
        
        
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
