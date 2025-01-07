//
//  ItemListRow.swift
//  Todo
//
//  Created by ali on 07/01/2025.
//

import SwiftUI

struct ItemListRow: View {
    
    var item: String = ""
    
    var body: some View {
        HStack {
            Image(systemName: "circle")
                .font(.title2)
                .foregroundStyle(.toDoRed)
                .fontWeight(.thin)
            
            Text(item)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundStyle(.toDoPrimary)
        }
        
        .padding()
    }
}

#Preview {
    ItemListRow()
}
