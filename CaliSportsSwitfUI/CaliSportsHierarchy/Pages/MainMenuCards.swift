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

                    NavigationLink(
                        destination: ExercisesView(),
                        label: {
                            GroupBox(label: TitleLines(titleText: "Exercises")) {
                                Divider()
                                SubtitleLines(subtitleText: "-Scheduled Workouts")
                                SubtitleLines(subtitleText: "-Instant Workouts")
                                SubtitleLines(subtitleText: "-Exercises")
                            } //: GROUPBOX
						}).foregroundColor(.black)

                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 10)
                        .onTapGesture(perform: {
                        })

                    // MARK: - ROUTINES CARD

                    NavigationLink(
                        destination: RoutinesView(),
                        label: {
                            GroupBox(label: TitleLines(titleText: "Routines")) {
                                Divider()
                                SubtitleLines(subtitleText: "-Programs")
                                SubtitleLines(subtitleText: "-Moves")
                            } //: GROUPBOX
                        }).foregroundColor(.black)

                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 10)

                    // MARK: - CALENDAR CARD
					NavigationLink(
						destination: CalendarPage(),
						label: {
							GroupBox(label: TitleLines(titleText: "Calendar")) {
								Divider()
								SubtitleLines(subtitleText: "-Monday")
								SubtitleLines(subtitleText: "-Tuesday")
								SubtitleLines(subtitleText: "-Wednesday")
								SubtitleLines(subtitleText: "-Thursday")
								SubtitleLines(subtitleText: "-Friday")
								SubtitleLines(subtitleText: "-Saturday")
								SubtitleLines(subtitleText: "-Sunday")
							} //: GROUPBOX
						}).foregroundColor(.black)
                    
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)

                    // MARK: - PLANS CARD
					NavigationLink(
						destination: PlansView(),
						label: {
							GroupBox(label: TitleLines(titleText: "Plans")) {
								Divider()
								SubtitleLines(subtitleText: "-Basic Plans")
								SubtitleLines(subtitleText: "-Pro Plans")
								SubtitleLines(subtitleText: "-Custom Plans")
							} //: GROUPBOX
						}).foregroundColor(.black)
                    
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)

                    // MARK: - TRACKING/LOGS CARD
					NavigationLink(
						destination: TrackingView(),
						label: {
							GroupBox(label: TitleLines(titleText: "Logs/Tracking")) {
								Divider()
								SubtitleLines(subtitleText: "-Daily Tracking")
								SubtitleLines(subtitleText: "-Progress Tracking")
								SubtitleLines(subtitleText: "-Movement Tracking")
							} //: GROUPBOX
						}).foregroundColor(.black)
                    
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
					
					// MARK: - TIMER CARD
					
					NavigationLink(
						destination: TimerView(),
						label: {
							GroupBox(label: TitleLines(titleText: "Timer")) {
								Divider()
								HStack {
									SubtitleLines(subtitleText: "-Take me to a simple chronometer")
								}
							} //: GROUPBOX
						}).foregroundColor(.black)
						
						.clipShape(RoundedRectangle(cornerRadius: 15))
						.padding(.horizontal, 10)
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
