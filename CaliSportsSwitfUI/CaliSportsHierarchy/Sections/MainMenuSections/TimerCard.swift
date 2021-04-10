//
//  TimerCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct TimerCard: View {
	var body: some View {
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
    }
}

struct TimerCard_Previews: PreviewProvider {
    static var previews: some View {
        TimerCard()
    }
}
