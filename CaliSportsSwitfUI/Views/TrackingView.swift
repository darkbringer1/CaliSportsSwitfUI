//
//  TrackingView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 7.04.2021.
//

import SwiftUI

struct TrackingView: View {
    var body: some View {
		VStack {
			Text("Tracking/Logging View")
		}
		.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
			Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
		}))
    }
}

struct TrackingView_Previews: PreviewProvider {
    static var previews: some View {
        TrackingView()
    }
}
