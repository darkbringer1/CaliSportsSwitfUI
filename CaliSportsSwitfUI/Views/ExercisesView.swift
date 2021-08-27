//
//  ExercisesView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 27.08.2021.
//

import SwiftUI

struct ExercisesView: View {
    var body: some View {
        
        VStack {
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading) {
                    Text("Exercises")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Select the exercise area you want")
                        .font(.subheadline)
                }
                
                ScrollView (.horizontal, showsIndicators: false)  {
                    HStack(spacing: 20){
                        bodyPartCirles(red: 0.8, green: 1, blue: 0.741)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartCirles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                }.padding(.horizontal, 30)
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(red: 0.8, green: 1, blue: 0.741))
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(lineWidth: 1.0)
                }.frame(width: 320, height: 320)
                .padding()
                Text("Selected move")
                    .font(.subheadline)
                Text("Punches")
                    .font(.footnote)
                
                VStack{
                    HStack{
                        bodyPartRectangles(red: 0.8, green: 1, blue: 0.741)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                    HStack{
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                    HStack{
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                    HStack{
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                    HStack{
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                        bodyPartRectangles(red: 0.494, green: 0.792, blue: 0.611)
                    }
                }
                .padding(.bottom, 25)
            
            }
            .multilineTextAlignment(.leading)
        }
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}


struct bodyPartCirles: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    
    var body: some View {
        
        ZStack{
            Circle()
                .fill(Color(red: red, green: green, blue: blue))
            Circle()
                .strokeBorder(Color.black)
        }.frame(width: 44, height: 44, alignment: .center)
    }
}

struct bodyPartRectangles: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color(red: red, green: green, blue: blue))
            RoundedRectangle(cornerRadius: 20)
                .strokeBorder(lineWidth: 1.0)
        }.frame(width: 105, height: 105)
    }
}
