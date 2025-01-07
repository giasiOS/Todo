//
//  ListItemRow.swift
//  Todo
//
//  Created by ali on 07/01/2025.
//

import SwiftUI

struct ListItemRow: View {
    
    // ijected item..
    var item: String = ""
    
    var body: some View {
        HStack {
            // SF symbol ..
            Image(systemName: "circle")
                .font(.title2)
                .foregroundStyle(.toDoRed)
                .fontWeight(.thin)
            // Todo text ..
            Text(item)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundStyle(.toDoPrimary)
        }
        .padding()
    }
}

#Preview {
    ListItemRow()
}
