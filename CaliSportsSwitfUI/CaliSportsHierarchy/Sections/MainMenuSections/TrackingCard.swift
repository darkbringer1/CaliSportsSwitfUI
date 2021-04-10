//
//  TrackingCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct TrackingCard: View {
    var body: some View {
		NavigationLink(
			destination: TrackingView(),
			label: {
				GroupBox(label: TitleLines(titleText: "Logs/Tracking")) {
					Divider()
					SubtitleLines(subtitleText: "-Daily Tracking")
					SubtitleLines(subtitleText: "-Progress Tracking")
					SubtitleLines(subtitleText: "-Movement Tracking")
				} //: GROUPBOX
			}).foregroundColor(.black)
			
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 10)
    }
}

struct TrackingCard_Previews: PreviewProvider {
    static var previews: some View {
        TrackingCard()
    }
}
