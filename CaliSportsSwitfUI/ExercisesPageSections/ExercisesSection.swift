//
//  ExercisesSection.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ExercisesSection: View {
    var body: some View {
        VStack{
            PageTitleLines(pageTitleText: "Upper Body")
            
            GroupBox {
                SubtitleLines(subtitleText: "Push-Ups")
                SubtitleLines(subtitleText: "Pull-Ups")
                SubtitleLines(subtitleText: "Muscle-Ups")
                SubtitleLines(subtitleText: "Dips")
                SubtitleLines(subtitleText: "Handstand Push-Ups")
                SubtitleLines(subtitleText: "Forearm Exercises")
                SubtitleLines(subtitleText: "Neck Training")
            }//:GROUPBOX
            
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            PageTitleLines(pageTitleText: "Lower Body")
            GroupBox {
                SubtitleLines(subtitleText: "Squats")
                SubtitleLines(subtitleText: "Lower Leg Training")
                SubtitleLines(subtitleText: "Leg Raises")
            }//:GROUPBOX
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 20)
            PageTitleLines(pageTitleText: "Core")
            GroupBox {
                SubtitleLines(subtitleText: "Bridges")
                SubtitleLines(subtitleText: "Planks")
                SubtitleLines(subtitleText: "Front Lever")
                SubtitleLines(subtitleText: "HumanFlags")
                SubtitleLines(subtitleText: "Plance")
                SubtitleLines(subtitleText: "Active Stretching")
            }//:GROUPBOX
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
