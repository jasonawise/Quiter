//
//  QuitDataModel.swift
//  Quiter
//
//  Created by Jason Wise on 6/1/22.
//

import Foundation

class ThingToQuit: ObservableObject {
    @Published var thingsToQuit = []
}


struct QuitterModel : Identifiable {
    var id = UUID()
    var name : String
    var today : Date
    var stoppedDate : Date
}
