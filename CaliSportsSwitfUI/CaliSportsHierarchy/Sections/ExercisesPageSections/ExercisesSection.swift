//
//  ExercisesSection.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ExercisesSection: View {
    var body: some View {
        VStack {
            PageTitleLines(pageTitleText: "Upper Body")

            GroupBox {
                SubtitleButtonLines(subtitleText: "Push-Ups")
                SubtitleButtonLines(subtitleText: "Pull-Ups")
                SubtitleButtonLines(subtitleText: "Muscle-Ups")
                SubtitleButtonLines(subtitleText: "Dips")
                SubtitleButtonLines(subtitleText: "Handstand Push-Ups")
                SubtitleButtonLines(subtitleText: "Forearm Exercises")
                SubtitleButtonLines(subtitleText: "Neck Training")
            } //: GROUPBOX

            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            PageTitleLines(pageTitleText: "Lower Body")
            GroupBox {
                SubtitleButtonLines(subtitleText: "Squats")
                SubtitleButtonLines(subtitleText: "Lower Leg Training")
                SubtitleButtonLines(subtitleText: "Leg Raises")
            } //: GROUPBOX
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            PageTitleLines(pageTitleText: "Core")
            GroupBox {
                SubtitleButtonLines(subtitleText: "Bridges")
                SubtitleButtonLines(subtitleText: "Planks")
                SubtitleButtonLines(subtitleText: "Front Lever")
                SubtitleButtonLines(subtitleText: "HumanFlags")
                SubtitleButtonLines(subtitleText: "Plance")
                SubtitleButtonLines(subtitleText: "Active Stretching")
            } //: GROUPBOX
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
        }
    }
}

struct ExercisesSection_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesSection()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
