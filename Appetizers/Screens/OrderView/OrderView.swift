//
//  OrderView.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 29/04/25.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items)  { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }.onDelete { indexSet in
                            order.deleteItem(at: indexSet)
                        }
                    }
                    .listStyle(.plain)
                    
                    Button {
                        
                    } label: {
                        // APButtons(title: "$\(order.totalPrice, specifier: "%.2f") - Place order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place order")
                    }
                    .modifier(StandardButtonSize())
                    .padding(.bottom, 20)
                }
                
                if order.items.isEmpty {
                    EmptyStates(imageName: "empty-order", message: "You have no items in order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
}
