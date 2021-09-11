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
            HStack{
                Image(systemName: "chevron.left")
                //JULY
                Text("JULY").font(.custom("Quicksand Bold", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 0.5)))
                //AUGUST
                Text("AUGUST").font(.custom("Quicksand Bold", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                    .padding(.leading)
                //2018
                Text("2018").font(.custom("Quicksand Regular", size: 16)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                    .padding(.trailing)
                    //SEPTEMBER
                Text("SEPT").font(.custom("Quicksand Bold", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 0.5)))
                Image(systemName: "chevron.right")
            }
            .padding(.bottom)
            VStack {
                HStack {
                    VStack{
                        Group{
                        //kcal
                        Text("kcal").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.99, green: 0.41, blue: 0.49, alpha: 1)))
                        
                        //600
                        Text("600").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //500
                        Text("500").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //400
                        Text("400").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //300
                        Text("300").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //200
                        Text("200").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //100
                        Text("100").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        }.padding(.vertical, 10)
                    }
                    VStack{
                        //150 kcal/day
                        Text("150 kcal/day").font(.custom("Quicksand Regular", size: 20)).foregroundColor(Color(#colorLiteral(red: 0.64, green: 0.64, blue: 0.67, alpha: 1)))
                        ZStack {
                            Rectangle().cornerRadius(20).frame(width: 250, height: 250, alignment: .center)
                            Text("This will be changed with 3rd party kit SwiftUICharts from: https://github.com/AfrazCodes/SwiftUICharts/")
                                .foregroundColor(.blue)
                                .frame(width: 200, height: 200, alignment: .center)
                            
                        }
                    }
                    
                    VStack{
                        Group{
                        //min
                        Text("min").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.99, green: 0.41, blue: 0.49, alpha: 1)))
                        //60
                        Text("60").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //50
                        Text("50").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //40
                        Text("40").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //30
                        Text("30").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //20
                        Text("20").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        //10
                        Text("10").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                        }.padding(.vertical, 10)
                    }
                    
                }
                HStack{
                    Group{
                    //0
                    Text("0").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //5
                    Text("5").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //10
                    Text("10").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //15
                    Text("15").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //20
                    Text("20").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //25
                    Text("25").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.58, green: 0.58, blue: 0.59, alpha: 1)))
                    //day
                    Text("day").font(.custom("Quicksand Regular", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.99, green: 0.41, blue: 0.49, alpha: 1)))
                    }.padding(.horizontal, 12)
                }
            }
            //Oval
            HStack {
                VStack{
                    ZStack {
                        Capsule()
                            .fill(Color(#colorLiteral(red: 0.8039215803146362, green: 0.9490196108818054, blue: 0.9490196108818054, alpha: 1)))
                            .frame(width: 150, height: 25)
                        //Traning time
                        Text("Traning time").font(.custom("Quicksand Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                    }
                    //Oval
                    ZStack {
                        Capsule()
                            .fill(Color(#colorLiteral(red: 1, green: 0.7764706015586853, blue: 0.6784313917160034, alpha: 1)))
                            .frame(width: 150, height: 25)
                        //Energy
                        Text("Energy").font(.custom("Quicksand Regular", size: 14)).foregroundColor(Color(#colorLiteral(red: 0.44, green: 0.44, blue: 0.44, alpha: 1)))
                        
                    }
                }
                .padding()
                .frame(width: 250, height: 100, alignment: .leading)
                Spacer()
            }
            //Headline
            Text("Select a circle\n").font(.system(size: 17, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1))).tracking(-0.41)
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
