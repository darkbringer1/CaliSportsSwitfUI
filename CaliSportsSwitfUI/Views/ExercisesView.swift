//
//  ExercisesView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ExercisesView: View {
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
                .navigationBarItems(trailing:
                    Button(
                        action: {
                        },
                        label: {
                            Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
                        }
                    ))
            } //: SCROLLVIEW
        
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
