//
//  ExercisesCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct ExercisesCard: View {
    var body: some View {
		NavigationLink(
			destination: ExercisesView(),
			label: {
				GroupBox(label: TitleLines(titleText: "Exercises")) {
					Divider()
					SubtitleLines(subtitleText: "-Scheduled Workouts")
					SubtitleLines(subtitleText: "-Instant Workouts")
					SubtitleLines(subtitleText: "-Exercises")
				} //: GROUPBOX
			}).foregroundColor(.primary)
			
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 10)
			.onTapGesture(perform: {
			})
    }
}

struct ExercisesCard_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesCard()
    }
}
