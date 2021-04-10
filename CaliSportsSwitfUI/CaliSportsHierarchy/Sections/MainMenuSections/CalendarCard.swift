//
//  CalendarCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct CalendarCard: View {
    var body: some View {
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
    }
}

struct CalendarCard_Previews: PreviewProvider {
    static var previews: some View {
        CalendarCard()
    }
}
