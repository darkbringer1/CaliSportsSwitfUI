//
//  CaliSportsSwitfUIApp.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

@main
struct CaliSportsSwitfUIApp: App {
    
    let isSignedIn = false
    let isLoggedOut = true
    var body: some Scene {
        WindowGroup {
            
            if isSignedIn == true {
                MainMenuCards()
            } else {
            LoginPage()
            }
        }
    }
}
