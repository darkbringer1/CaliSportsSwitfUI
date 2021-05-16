//
//  CalendarPage.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 16.03.2021.
//

import SwiftUI

struct CalendarPage: View {
    var body: some View {
        VStack {
            CalendarView()
            Spacer()
		}
        .navigationBarTitle(Text("Calendar"), displayMode: .inline)
        .background(Image("beach-girl-pattern")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all))
		.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
			Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
		}))
    }
}

struct CalendarPage_Previews: PreviewProvider {
    static var previews: some View {
        CalendarPage()
    }
}
