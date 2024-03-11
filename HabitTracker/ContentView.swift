//
//  ContentView.swift
//  HabitTracker
//
//  Created by Tony Sharples on 11/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    Text("Habit 1")
                    Text("Habit 2")
                    Text("Habit 3")
                    Text("Habit 4")
                    Text("Habit 5")
                }
                .navigationTitle("Habits")
                .toolbar {
                    NavigationLink {
                        // TODO: Navigate to Create Habit View.
                    } label: {
                        Label("Create Habit", systemImage: "plus.circle")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
