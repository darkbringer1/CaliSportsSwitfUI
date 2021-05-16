//
//  InstantWorkoutsSection.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct InstantWorkoutsSection: View {
	var body: some View {
		VStack {
			PageTitleLines(pageTitleText: "Instant Workouts")
			
			GroupBox {
				SubtitleLines(subtitleText: "Perform Routine")
			} //: GROUPBOX
			.frame(height: 50)
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 20)
			GroupBox {
				SubtitleLines(subtitleText: "Tabata")
			} //: GROUPBOX
			.frame(height: 50)
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 20)
			GroupBox {
				SubtitleLines(subtitleText: "Bring Sally Up")
			} //: GROUPBOX
			.frame(height: 50)
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 20)
			GroupBox {
				SubtitleLines(subtitleText: "Tabata")
			} //: GROUPBOX
			.frame(height: 50)
			.clipShape(RoundedRectangle(cornerRadius: 15))
			.padding(.horizontal, 20)
			Divider().padding(.horizontal, 40)
		} //: VSTACK
	} //: BODY
} //: VIEW

struct InstantWorkoutsSection_Previews: PreviewProvider {
	static var previews: some View {
		InstantWorkoutsSection()
	}
}
