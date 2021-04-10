//
//  MainMenuCards.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct MainMenuCards: View {
	var body: some View {
		NavigationView {
			ScrollView(.vertical, showsIndicators: false) {
				VStack {
					
					// MARK: - EXERCISES CARD
					
					ExercisesCard()
					
					// MARK: - ROUTINES CARD
					
					RoutinesCard()
					
					// MARK: - CALENDAR CARD
					
					CalendarCard()
					
					// MARK: - PLANS CARD
					
					PlansCard()
					
					// MARK: - TRACKING/LOGS CARD
					
					TrackingCard()
					
					// MARK: - TIMER CARD
					
					TimerCard()
						
				} //: VSTACK
				.navigationBarTitle(Text("SportsApp"), displayMode: .large)
				.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
					Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
				}))
			} //: SCROLLVIEW
			.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0)
		} //: NAVIGATIONVIEW
	} //: BODY
} //: STRUCT

struct MainMenuCards_Previews: PreviewProvider {
	static var previews: some View {
		MainMenuCards()
	}
}
