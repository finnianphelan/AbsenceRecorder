//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Finnian Phelan on 26/02/2024.
//

import SwiftUI

struct AbsenceItem: View {
	@ObservedObject var studentAbsence: StudentAbsence
	
	var body: some View {
		HStack {
			Text("\(studentAbsence.student.forename)")
			Spacer()
			if studentAbsence.isAbsent {
				Button("❌", action: { toggleAbsent() })
			} else {
				Button("✔️", action: { toggleAbsent() })
			}
		}
	}
	
	func toggleAbsent() {
		studentAbsence.isAbsent.toggle()
	}
}

struct AbsenceItem_Previews: PreviewProvider {
    static var previews: some View {
        AbsenceItem(studentAbsence: StudentAbsence.example)
    }
}
