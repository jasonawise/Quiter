//
//  QuiterView.swift
//  Quiter
//
//  Created by Jason Wise on 5/30/22.
//

import SwiftUI

struct QuiterView: View {
    var body: some View {
        NavigationLink(destination: AddQuiterView()) {
            Text("Say I quit")
        }
        
    }
}

struct QuiterView_Previews: PreviewProvider {
    static var previews: some View {
        QuiterView()
    }
}
