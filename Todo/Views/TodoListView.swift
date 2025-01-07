//
//  TodoListView.swift
//  Todo
//
//  Created by ali on 07/01/2025.
//

import SwiftUI

struct TodoListView: View {
    
    // Mock data..
    @State private var items: [String] = ["This first Todo.", "Then second one.","Third one."]
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            // BG layer..
                Color.toDoBG.ignoresSafeArea()
            // Condition if Items isEmpty..
                if !items.isEmpty {
                    // List of Items..
                    List(items, id:\.self) { item in
                        // List Row..
                        ListItemRow(item: item)
                            .listRowBackground(Color(.toDoBG))
                            .listRowSeparatorTint(.toDoSecondary)
                    }
                    .padding(.horizontal)
                    .listStyle(.plain)
                } else {
                    // Mock Content if list is empty..
                    ContentUnavailableView.search
                }
                
            // Action button to add new todo to the list..
                Button {
                    
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                }
                .offset(x: -40,y: -60)
        }
        // Title layer..
            .navigationTitle("To Do List")
            .toolbarBackground(Color(.toDoBG), for: .navigationBar)
            .tint(.toDoPrimary)
    }
}

// Preview ..
#Preview {
    // Mock nav stack..
    NavigationStack {
        TodoListView()
    }
}
