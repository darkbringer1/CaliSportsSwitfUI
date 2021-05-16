//
//  ExercisesSection.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ExercisesSection: View {
    let upperBodyArray: [String] = ["Push-Ups","Pull-Ups","Muscle-Ups","Dips","Handstand Push-Ups","Forearm Exercises","Neck Training"]
    let lowerBodyArray: [String] = ["Squats","Lower Leg Training","Leg Raises"]
    let coreArray: [String] = ["Bridges","Planks","Front Lever","HumanFlags","Plance","Active Stretching"]
    var body: some View {
        VStack {
            PageTitleLines(pageTitleText: "Upper Body")
            ForEach (upperBodyArray, id: \.self) { move in
                
                GroupBox{
                    SubtitleLines(subtitleText: move)
                }
                .frame(height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal, 20)
            }//:UPPER BODY LOOP
            
            PageTitleLines(pageTitleText: "Lower Body")
            ForEach (lowerBodyArray, id: \.self) { move in
                
                GroupBox{
                    SubtitleLines(subtitleText: move)
                }
                .frame(height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal, 20)
            }//:LOWER BODY LOOP
           
            PageTitleLines(pageTitleText: "Core")
            ForEach (coreArray, id: \.self) { move in
                
                GroupBox{
                    SubtitleLines(subtitleText: move)
                }
                .frame(height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.horizontal, 20)
            }//:CORE LOOP
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
