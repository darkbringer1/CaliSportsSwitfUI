//
//  SubtitleLines.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 14.03.2021.
//

import SwiftUI

struct SubtitleLines: View {
    var subtitleText : String
    var body: some View {
        HStack {
            Text(subtitleText)
                .foregroundColor(.primary)
                .font(.subheadline)
                .fontWeight(.light)
                .frame(alignment: .leading)
                .padding(.vertical, 5)
            Spacer()
        }
    }
}

struct SubtitleLines_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleLines(subtitleText: "-This is a subtitle line")
            .previewLayout(.sizeThatFits)
    }
}
