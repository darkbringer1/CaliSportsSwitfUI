//
//  PlansCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct PlansCard: View {
    var body: some View {
		NavigationLink(
			destination: PlansView(),
			label: {
				GroupBox(label: TitleLines(titleText: "Plans")) {
					Divider()
					SubtitleLines(subtitleText: "-Basic Plans")
					SubtitleLines(subtitleText: "-Pro Plans")
					SubtitleLines(subtitleText: "-Custom Plans")
				} //: GROUPBOX
			}).foregroundColor(.primary)
			
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 10)
    }
}

struct PlansCard_Previews: PreviewProvider {
    static var previews: some View {
        PlansCard()
    }
}
