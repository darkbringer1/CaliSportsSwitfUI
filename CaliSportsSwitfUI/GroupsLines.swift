//
//  GroupsLines.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 13.03.2021.
//

import SwiftUI

struct GroupsLines: View {
    
    var leftSideText : String
    var rightSideText : String
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(leftSideText)
                Spacer()
                Text(rightSideText)
            }//:HSTACK
        }//:GROUPBOX
    }
}

struct GroupsLines_Previews: PreviewProvider {
    static var previews: some View {
        Group{
    
        GroupsLines(leftSideText: "LeftLine", rightSideText: "RightLine")
            .previewLayout(.fixed(width: 375, height: 60))
        }
    }
}
