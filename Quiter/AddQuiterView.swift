//
//  AddQuiterView.swift
//  Quiter
//
//  Created by Jason Wise on 5/30/22.
//

import SwiftUI

struct AddQuiterView: View {
    @State private var stopedDate = Date()
    @State private var today = Date()
    @State private var quitterName: String = ""
    
    @FocusState private var nameIsFocused: Bool
    @Environment(\.dismiss) var dismiss
 
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                TextField("What did / do you want to stop?", text: $quitterName)
                    .font(.title2)
                    .padding()
                    .focused($nameIsFocused)
                DatePicker(
                    selection: $stopedDate,
                    displayedComponents: [.date]
                ) {
                    Text("When did you stop it?")
                        .font(.title3)
                        .fontWeight(.light)
                }
                .padding()
            }
            .toolbar {
                ToolbarItem {
                    Button("Add") {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct AddQuiterView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuiterView()
    }
}
