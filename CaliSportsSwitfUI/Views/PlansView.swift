//
//  PlansView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 7.04.2021.
//

import SwiftUI

struct PlansView: View {
    var body: some View {
		VStack {
			Text("Plans View")
		}
		.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
			Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
		}))
    }
}

struct PlansView_Previews: PreviewProvider {
    static var previews: some View {
        PlansView()
    }
}
