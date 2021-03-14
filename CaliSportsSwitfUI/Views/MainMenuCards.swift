//
//  MainMenuCards.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct MainMenuCards: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    //MARK: -SECTION
                    GroupBox(label: TitleLines(titleText: "Exercises")) {
                        Divider().padding(.vertical, 4)
                        SubtitleLines(subtitleText: "-Scheduled Workouts")
                        SubtitleLines(subtitleText: "-Instant Workouts")
                        SubtitleLines(subtitleText: "-Exercises")
                    }//:GROUPBOX
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
                    
                    //MARK: -SECTION
                    
                    GroupBox(label: TitleLines(titleText: "Routines")) {
                        Divider().padding(.vertical, 4)
                        SubtitleLines(subtitleText: "-Programs")
                        SubtitleLines(subtitleText: "-Moves")
                        
                    }//:GROUPBOX
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
                    
                    //MARK: -SECTION
                    GroupBox(label: TitleLines(titleText: "Calendar")) {
                        Divider().padding(.vertical, 4)
                        SubtitleLines(subtitleText: "-Monday")
                        SubtitleLines(subtitleText: "-Tuesday")
                        SubtitleLines(subtitleText: "-Wednesday")
                        SubtitleLines(subtitleText: "-Thursday")
                        SubtitleLines(subtitleText: "-Friday")
                        SubtitleLines(subtitleText: "-Saturday")
                        SubtitleLines(subtitleText: "-Sunday")
                        
                    }//:GROUPBOX
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
                    
                    //MARK: -SECTION
                    GroupBox(label: TitleLines(titleText: "Plans")) {
                        Divider().padding(.vertical, 4)
                        SubtitleLines(subtitleText: "-Basic Plans")
                        SubtitleLines(subtitleText: "-Pro Plans")
                        SubtitleLines(subtitleText: "-Custom Plans")
                    }//:GROUPBOX
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
                    
                    //MARK: -SECTION
                    GroupBox(label: TitleLines(titleText: "Logs/Tracking")) {
                        Divider().padding(.vertical, 4)
                        SubtitleLines(subtitleText: "-Daily Tracking")
                        SubtitleLines(subtitleText: "-Progress Tracking")
                        SubtitleLines(subtitleText: "-Movement Tracking")
                        
                    }//:GROUPBOX
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.horizontal, 10)
                    
                }//:VSTACK
                .navigationBarTitle(Text("SportsApp"),displayMode: .large)
                .navigationBarItems(trailing: Button(action: {}, label: {
                    Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
                }))
            }//:SCROLLVIEW
            
        }//:NAVIGATIONVIEW
        
        
    }//:BODY
    
}//:STRUCT

struct MainMenuCards_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuCards()
            
    }
}
