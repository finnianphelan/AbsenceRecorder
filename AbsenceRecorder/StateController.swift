//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Finnian Phelan on 29/02/2024.
//

import Foundation

class StateController: ObservableObject {
	@Published var divisions: [Division] = []
	
	init() {
		loadFromFile()
	}
	
	func loadFromFile() {
		if let loaded: [Division] = FileManager.default.load(from: "divisions.json") {
			divisions = loaded
		}
	}
	
	func saveToFile() {
		FileManager.default.save(to: "divisions.json", object: divisions)
	}
}
