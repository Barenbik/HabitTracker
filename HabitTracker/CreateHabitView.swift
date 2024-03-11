//
//  CreateHabitView.swift
//  HabitTracker
//
//  Created by Tony Sharples on 11/03/2024.
//

import SwiftUI

struct CreateHabitView: View {
    @State private var name = ""
    @State private var description = ""
    @State private var numberOfTimes = 0
    @State private var selectedFrequency: Frequency = .day
    
    private enum Frequency: Identifiable {
        case day, week, month, year
        var id: Self { self }
    }
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Description", text: $description, axis: .vertical)
            
            Picker("Every", selection: $numberOfTimes) {
                ForEach(1..<53) {
                    Text("\($0)")
                }
            }
            
            Picker("Frequency", selection: $selectedFrequency) {
                Text("Day").tag(Frequency.day)
                Text("Week").tag(Frequency.week)
                Text("Month").tag(Frequency.month)
                Text("Year").tag(Frequency.year)
            }
        }
    }
}

#Preview {
    CreateHabitView()
}
