//
//  MainTitles.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct MainTitlesLines: View {
    // MARK: - PROPERTIES

    var mainTitleText: String

    // MARK: - BODY

    var body: some View {
        Text(mainTitleText)
            .font(.largeTitle)
            .fontWeight(.bold)
            .frame(alignment: .leading)
            .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            .padding()
    }
}

// MARK: - PREVIEW

struct MainTitles_Previews: PreviewProvider {
    static var previews: some View {
        MainTitlesLines(mainTitleText: "This is a main title")
            .previewLayout(.sizeThatFits)
    }
}
