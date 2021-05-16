//
//  RoutinesView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 16.03.2021.
//

import SwiftUI

struct RoutinesView: View {
    var body: some View {
		VStack {
			Text("Routines page")
		}
		.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
			Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
		}))
    }
}

struct RoutinesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
