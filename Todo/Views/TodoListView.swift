//
//  TodoListView.swift
//  Todo
//
//  Created by ali on 07/01/2025.
//

import SwiftUI

struct TodoListView: View {
    
    @State private var items: [String] = ["This first Todo.", "Then second one.","Third one."]
    
    var body: some View {
        ZStack {
         
            if !items.isEmpty {
                List(items, id:\.self) { item in
                    
                }
            } else {
                ContentUnavailableView.search
            }
        
        }
        
            .navigationTitle("To Do List")
    }
}

#Preview {
    NavigationStack {
        TodoListView()
    }
}
