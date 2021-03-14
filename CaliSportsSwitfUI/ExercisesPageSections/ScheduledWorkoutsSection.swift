//
//  ScheduledWorkoutsSection.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct ScheduledWorkoutsSection: View {
    var body: some View {
        
        VStack {
            
        PageTitleLines(pageTitleText: "Scheduled Workouts")
        
        GroupBox {
            SubtitleLines(subtitleText: "Today - \("HH:mm")")
        }//:GROUPBOX
        .frame(height: 50)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 20)
        GroupBox {
            SubtitleLines(subtitleText: "Tomorrow - \("HH:mm")")
        }//:GROUPBOX
        .frame(height: 50)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .padding(.horizontal, 20)
        Divider().padding(.horizontal, 40)
        }
    }
}

struct ScheduledWorkoutsSection_Previews: PreviewProvider {
    static var previews: some View {
        ScheduledWorkoutsSection()
    }
}
