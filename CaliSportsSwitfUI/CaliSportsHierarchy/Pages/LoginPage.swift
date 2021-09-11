//
//  LoginPage.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 29.04.2021.
//

import SwiftUI
struct LoginPage: View {
    init() {
        UINavigationBar.appearance().barTintColor = .clear
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    @State private var nameTextField = ""
    @State private var passwordTextField = ""
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                // Welcome Stock Image
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(#colorLiteral(red: 1, green: 0.7803921699523926, blue: 0.7803921699523926, alpha: 1)))
                    RoundedRectangle(cornerRadius: 20)
                        .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), lineWidth: 1)
                }
                .frame(width: 105, height: 105)
                
                // Welcome Title
                Text("WELCOME")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1)))
                    .tracking(0.37)
                    .multilineTextAlignment(.center)
                // Body
                Text("If you have an account, please log in.")
                    .font(.system(size: 17, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1)))
                    .tracking(-0.41)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)
                Group {
                    // FormLabel
                    Text("Email Adress")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1)))
                        .tracking(-0.41)
                    TextField("Enter your e-mail", text: $nameTextField)
                        .frame(width: 340, height: 60)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                }
                Group {
                    // FormLabel
                    Text("Password")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1)))
                        .tracking(-0.41)
                    SecureField("Enter your password", text: $passwordTextField)
                        .frame(width: 340, height: 60)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .multilineTextAlignment(.center)
                }
                // AdvisoryText
                Text("If you dont have an account, click here to sign up!\nor\n(ERROR- WRONG EMAIL OR PASSWORD)")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(#colorLiteral(red: 0.31, green: 0.31, blue: 0.31, alpha: 1)))
                    .multilineTextAlignment(.center)
                Spacer()
                // Button
                NavigationLink(destination: MainMenuCards(),
                               label: {
                                ZStack {
                                    Capsule()
                                        .frame(width: 340, height: 50, alignment: .center)
                                        .foregroundColor(.black)
                                    Text("LOGIN")
                                        .font(.system(size: 15, weight: .bold))
                                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .tracking(-0.41)
                                        .multilineTextAlignment(.center)
                                }
                               }) //: NAVIGATION LINK
                Spacer()
            } //: VSTACK
            .background(
                Image("clouds-pattern")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .edgesIgnoringSafeArea(.all)
                            )
        }
        .navigationBarHidden(true)
    } //: BODY
} //: STRUCT

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
