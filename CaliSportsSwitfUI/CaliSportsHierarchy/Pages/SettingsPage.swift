//
//  SettingsPage.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 7.04.2021.
//

import SwiftUI

struct SettingsPage: View {
	// MARK: - PROPERTIES
	
	@State private var enableNotification: Bool = true
	@State private var backgroundRefresh: Bool = false
	
	var body: some View {
		NavigationView {
			VStack(spacing: 0) {
				// MARK: - HEADER
				
				ZStack(alignment: .center) {
					LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
						.frame(maxHeight: 350)
						.edgesIgnoringSafeArea(.all)
					VStack(spacing: 5) {
						Image(systemName: "lungs")
							.resizable()
							.scaledToFit()
							.frame(width: 100, height: 100, alignment: .center)
							.shadow(color: .orange, radius: 3, x: 0, y: 4)
						
						Text("Sports App".uppercased())
							.font(.system(.title, design: .serif))
							.fontWeight(.bold)
							.foregroundColor(.primary)
					}
					
					.frame(maxWidth: 200, maxHeight: 200)
					.padding(.top, -225)
					.padding(.bottom, 0)
				} //: ZSTACK
				Form {
					// MARK: - SECTION #1
					
					Section(header: Text("General Settings")) {
						Toggle(isOn: $enableNotification) {
							Text("Enable notifications")
						}
						Toggle(isOn: $backgroundRefresh) {
							Text("Background Refresh")
						}
					} //: SECTION 1
					
					// MARK: - SECTION #2
					
					Section(header: Text("Application")) {
						if enableNotification {
							HStack {
								Text("Product").foregroundColor(Color.gray)
								Spacer()
								Text("Sports App")
							}
							HStack {
								Text("Compatibility").foregroundColor(Color.gray)
								Spacer()
								Text("iOS 14 and above")
							}
							HStack {
								Text("Developer").foregroundColor(Color.gray)
								Spacer()
								Text("Darkbringer")
							}
							HStack {
								Text("Designer").foregroundColor(Color.gray)
								Spacer()
								Text("Darkbringer")
							}
							HStack {
								Text("Instagram").foregroundColor(Color.gray)
								Spacer()
								Text("@MyDevelopmentJourney")
							}
							HStack {
								Text("Version").foregroundColor(Color.gray)
								Spacer()
								Text("1.0.0")
							}
						} else {
							HStack {
								Text("Personal message")
									.foregroundColor(Color.gray)
								Text("🤌 Happy Coding!")
							}
						}
					} //: SECTION 2
					NavigationLink(destination: LoginPage(),
								   label: {
										Text("Log Out")
											.font(.system(size: 15, weight: .bold))
											.foregroundColor(Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)))
											.tracking(-0.41)
											.multilineTextAlignment(.center)
								   }) //: NAVIGATION LINK
						
				} //: FORM
				.padding(.top, -150)
				
			} //: VSTACK
			.frame(maxWidth: 640)
		} //: NAVIGATION VIEW
		.navigationBarTitle(Text("Settings"), displayMode: .inline)
	}
}

struct SettingsPage_Previews: PreviewProvider {
	static var previews: some View {
		SettingsPage()
	}
}
