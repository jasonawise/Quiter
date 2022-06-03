//
//  QuiterView.swift
//  Quiter
//
//  Created by Jason Wise on 5/30/22.
//

import SwiftUI

struct QuiterView: View {
    @State private var showingSheet = false
    var body: some View {
//        NavigationLink(destination: AddQuiterView()) {
//            Text("Say I quit")
//        }
        Button("Say I quit") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            AddQuiterView()
        }
        
    }
}

struct QuiterView_Previews: PreviewProvider {
    static var previews: some View {
        QuiterView()
    }
}
