//
//  AddNewItemView.swift
//  Todo
//
//  Created by ali on 07/01/2025.
//

import SwiftUI

struct AddNewItemView: View {
    
    @Environment(\.dismiss) private var dismiss
    @State private var text: String = ""
    @FocusState private var isFocused
    var body: some View {
        ZStack {
            
            Color.toDoBG.ignoresSafeArea()
            
            VStack {
                HStack {
                    TextField("Add new task..", text: $text)
                        .autocorrectionDisabled()
                        .focused($isFocused)
                        .padding()
                        .tint(.toDoPrimary)
                        .background(
                            
                            Color(isFocused ? .toDoBG : .toDoPrimary.opacity(0.1))
                                .clipShape(.rect(cornerRadius: 14))
                        )
                        .overlay {
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color(.toDoPrimary), lineWidth: isFocused ? 2 : 0)
                        }
                        .padding()
                        .animation(.bouncy, value: isFocused)
                    
                    if isFocused {
                        
                        Button("Add") {
                            
                        }
                        .font(.system(size: 20))
                        .tint(.toDoPrimary)
                        .transition(.move(edge: .trailing))
                        .padding(.trailing)
                        .animation(.bouncy, value: isFocused)
                    }
                }
            }
            .frame(maxHeight: .infinity, alignment : .top)
        }
        .navigationTitle("Add To Do")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .font(.system(size: 16))
                }
                .tint(.toDoPrimary)
            }
        }
    }
}

#Preview {
    NavigationStack {
        AddNewItemView()
    }
}
