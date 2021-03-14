//
//  SubtitleLines.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct SubtitleLines: View {
    
    //MARK: -PROPERTIES
    
    var subtitleText : String
    
    //MARK: -BODY
    var body: some View {
        Button(action:  {
            //:ACTION HERE
        }) {
            HStack {
                Text(subtitleText)
                    .foregroundColor(.accentColor)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .frame(alignment: .leading)
                    .padding(.vertical, 10)
                    
                Spacer()
                Image(systemName: "arrowtriangle.forward")
                    .imageScale(.medium)
                    
            }//:HSTACK
            .accentColor(.primary)
        }
            
    
    }
}
    //MARK: -PREVIEW
struct SubtitleLines_Previews: PreviewProvider {
    static var previews: some View {
        SubtitleLines(subtitleText: "-This is a subtitle")
            .previewLayout(.sizeThatFits)
    }
}
