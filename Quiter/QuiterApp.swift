//
//  QuiterApp.swift
//  Quiter
//
//  Created by Jason Wise on 5/30/22.
//

import SwiftUI

@main
struct QuiterApp: App {
    
    @StateObject var data = ThingToQuit()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView().navigationTitle("Quitter")
            }
            .environmentObject(data)
        }
    }
}
