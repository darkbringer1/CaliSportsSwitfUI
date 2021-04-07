//
//  SettingsPage.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 7.04.2021.
//

import SwiftUI

struct SettingsPage: View {
    var body: some View {
		ScrollView (showsIndicators: false) {
			GroupBox {
				ForEach(0 ..< 5) { item in
					Text("This is item \(item)")
					
					Divider()
						.padding()
						.frame(maxWidth: 320)
				}
			}
		}
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
