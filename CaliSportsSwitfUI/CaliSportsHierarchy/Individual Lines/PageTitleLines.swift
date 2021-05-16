//
//  PageTitles.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct PageTitleLines: View {
    // MARK: - PROPERTIES

    var pageTitleText: String

    // MARK: - BODY

    var body: some View {
        Text(pageTitleText)
            .font(.headline)
            .fontWeight(.medium)
            .frame(alignment: .center)
            //            .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
            .padding(4)
            .background(Color.white)
    }
}

// MARK: - PREVIEW

struct PageTitleLines_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleLines(pageTitleText: "This is a title inside a page")
            .previewLayout(.sizeThatFits)
    }
}
