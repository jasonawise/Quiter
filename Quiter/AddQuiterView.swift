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
 
    var body: some View {
        VStack() {
            TextField("What did / do you want to stop?", text: $quitterName)
                .font(.title2)
                .padding()
            Text("When did you stop it?")
                .font(.title2)
                .fontWeight(.light)
            DatePicker(
                "Date",
                selection: $stopedDate,
                displayedComponents: [.date]
            )
            .datePickerStyle(.graphical)
            .padding()
            
            Text("You stoped on: \(stopedDate.formatted(.dateTime.day().month().year()))")
            
            Text("Today is: \(today.formatted(.dateTime.day().month().year()))")
            
            Button(action: {numberOfDaysBetweenDates(startDate: today, endDate: stopedDate)}) {
                Text("ADD")
            }
        }
    }
}

struct AddQuiterView_Previews: PreviewProvider {
    static var previews: some View {
        AddQuiterView()
    }
}
