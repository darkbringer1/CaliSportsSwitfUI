//
//  RoutinesCard.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 10.04.2021.
//

import SwiftUI

struct RoutinesCard: View {
	var body: some View {
		NavigationLink(
		destination: RoutinesView(),
		label: {
			GroupBox(label: TitleLines(titleText: "Routines")) {
				Divider()
				SubtitleLines(subtitleText: "-Programs")
				SubtitleLines(subtitleText: "-Moves")
			} //: GROUPBOX
		}).foregroundColor(.black)
		
		.clipShape(RoundedRectangle(cornerRadius: 15))
		.padding(.horizontal, 10)
    }
}

struct RoutinesCard_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesCard()
    }
}
