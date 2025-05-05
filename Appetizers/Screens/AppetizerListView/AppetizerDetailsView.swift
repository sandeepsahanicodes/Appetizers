//
//  AppetizerDetailsView.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 01/05/25.
//

import SwiftUI

struct AppetizerDetailsView: View {
    
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 225)
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(appetizer.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
            
            HStack(spacing: 40) {
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Protein", value: appetizer.protein)
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
            }
            
            Spacer()
            
            Button {
                order.add(appetizer)
                isShowingDetail = false
            } label: {
                // APButtons(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
                
                    
            }
            .modifier(StandardButtonSize())
            .padding(.bottom, 30)
        
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct NutritionInfo: View {
    let title: String
    let value: Int
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption)
                .bold()
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
#Preview {
    AppetizerDetailsView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}
