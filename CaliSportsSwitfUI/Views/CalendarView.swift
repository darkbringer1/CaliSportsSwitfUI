//
//  CalendarView.swift
//  CaliSportsSwitfUI
//
//  Created by DarkBringer on 16.03.2021.
//

import FSCalendar
import SwiftUI
import UIKit

struct CalendarView: View {
	@State var selectedDate: Date = Date()
	
	var selectedDateStr: String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateStyle = .long
		dateFormatter.timeStyle = .none
		dateFormatter.locale = Locale.current
		
		return dateFormatter.string(from: selectedDate)
	}
	
	var body: some View {
		Section {
			VStack {
				CalendarRepresentable(selectedDate: $selectedDate)
					.padding()
					.background(
						RoundedRectangle(cornerRadius: 25.0)
							.foregroundColor(.white)
							.shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 0))
					.frame(height: 350)
					.padding()
				
				Section {
                    ZStack {
                        Rectangle()
                            .clipShape(Capsule())
                            .frame(maxHeight: 50)
                            .foregroundColor(.blue)
                            .opacity(0.5)
                        VStack {
                            Text("Selected Date: ")
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(.orange)
                            Text(selectedDateStr)
                                .font(.subheadline)
                        }
                    }
                        
				}
				Spacer()
			} //: VSTACK
		} //: SECTION
	} //: BODY
}

struct CalendarView_Previews: PreviewProvider {
	static var previews: some View {
		Group {
			CalendarView()
		}
	}
}

struct CalendarRepresentable: UIViewRepresentable {
	typealias UIViewType = FSCalendar
	
	var calendar = FSCalendar()
	
	@Binding var selectedDate: Date
	
	func updateUIView(_ uiView: FSCalendar, context: Context) { }
	
	func makeUIView(context: Context) -> FSCalendar {
		calendar.delegate = context.coordinator
		calendar.dataSource = context.coordinator
		
		calendar.allowsMultipleSelection = false
		
		let appearance = calendar.appearance
		
		appearance.headerDateFormat = "MMMM yyyy"
		appearance.borderRadius = 0.5
		appearance.selectionColor = .orange
		appearance.headerMinimumDissolvedAlpha = 0.25
		appearance.titleFont = .systemFont(ofSize: 15, weight: UIFont.Weight.medium)
		//        a.todayColor = .clear
		//        a.titleTodayColor = .red
		appearance.headerTitleColor = .darkGray
		appearance.weekdayTextColor = .systemIndigo
		appearance.todaySelectionColor = .systemOrange
		
		// CUSTOMIZE
		
		calendar.appearance.eventDefaultColor = .red
		
		return calendar
	} //: MAKEUI
	
	func makeCoordinator() -> Coordinator {
		Coordinator(self)
	} //: MAKECOORDINATOR
	
	class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
		var parent: CalendarRepresentable
		
		init(_ parent: CalendarRepresentable) {
			self.parent = parent
		}
		
		func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
			if parent.selectedDate == date {
				return 1
			} else { return 0 }
		}
		
		func calendar(_ calendar: FSCalendar, didSelect date: Date, at monthPosition: FSCalendarMonthPosition) {
			parent.selectedDate = date
		}
	} //: COORDINATOR
} //: CALENDAR REPRESENTABLE
