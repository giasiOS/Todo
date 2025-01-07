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
        ZStack(alignment: .bottomTrailing) {
           
                Color.toDoBG.ignoresSafeArea()
                if !items.isEmpty {
                    List(items, id:\.self) { item in
                        ItemListRow(item: item)
                            .listRowBackground(Color(.toDoBG))
                            .listRowSeparatorTint(.toDoSecondary)
                    }
                    .padding(.horizontal)
                    .listStyle(.plain)
                } else {
                    ContentUnavailableView.search
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                }
                .offset(x: -40,y: -60)
        }
            .navigationTitle("To Do List")
            .toolbarBackground(Color(.toDoBG), for: .navigationBar)
            .tint(.toDoPrimary)
    }
    
    func ItemListRow(item: String) -> some View {
        HStack {
            Image(systemName: "circle")
                .font(.title2)
                .foregroundStyle(.toDoRed)
            
            Text(item)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundStyle(.toDoPrimary)
        }
        
        .padding()
    }
}

#Preview {
    NavigationStack {
        TodoListView()
    }
}
