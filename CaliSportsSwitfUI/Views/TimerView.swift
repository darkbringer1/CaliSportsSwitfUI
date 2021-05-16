//
//  TimerView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 7.04.2021.
//

import SwiftUI

struct TimerView: View {
	@State var hours: Int = 00
	@State var minutes: Int = 00
	@State var seconds: Int = 00
	@State var timerIsPaused: Bool = true
	@State var timer: Timer? = nil
	
	var body: some View {
		VStack {
			Text("\(hours):\(minutes):\(seconds)")
			if timerIsPaused {
				HStack {
					Button(action: {
						restartTimer()
					}, label: {
						Image(systemName: "backward.end.alt")
							.padding()
					})
					.padding()
					Button(action: {
						self.startTimer()
					}, label: {
						Image(systemName: "play")
							.padding()
					})
					.padding()
				}
			} else {
				Button(action: {
					self.stopTimer()
				}) {
					Image(systemName: "stop.fill")
						.padding(.all)
				}
				.padding(.all)
			}
		}
		.accentColor(.primary)
		.navigationBarTitle(Text("Timer"), displayMode: .inline)
		.navigationBarItems(trailing: NavigationLink(destination: SettingsPage(), label: {
			Image(systemName: "gearshape.2.fill").foregroundColor(.primary)
		}))
	}
	
	func startTimer() {
		timerIsPaused = false
		// 1.make a new timer
		timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
			// 2.check time to add to H:M:S
			if self.seconds == 59 {
				self.seconds = 0
				if self.minutes == 59 {
					self.minutes = 0
					self.hours = self.hours + 1
				} else {
					self.minutes = self.minutes + 1
				}
			} else {
				self.seconds = self.seconds + 1
			}
		}
	}
	
	func stopTimer() {
		timerIsPaused = true
		timer?.invalidate()
		timer = nil
	}
	
	func restartTimer() {
		hours = 0
		minutes = 0
		seconds = 0
	}
}

struct TimerView_Previews: PreviewProvider {
	static var previews: some View {
		TimerView()
	}
}
