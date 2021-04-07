//
//  TitleLines.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct TitleLines: View {
    // MARK: - PROPERTIES

    var titleText: String

    // MARK: - BODY

    var body: some View {
        HStack {
            Text(titleText)
                .font(.headline)
                .fontWeight(.bold)
                .frame(alignment: .leading)
                //            .shadow(color: .black, radius: 10, x: 0.0, y: 0.0)
                .padding(4)
            Spacer()
        }
    }
}

// MARK: - PREVIEW

struct TitleLines_Previews: PreviewProvider {
    static var previews: some View {
        TitleLines(titleText: "This is a title")
            .previewLayout(.sizeThatFits)
    }
}
