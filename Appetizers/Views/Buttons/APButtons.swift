//
//  APButtons.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 01/05/25.
//

import SwiftUI

struct APButtons: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButtons(title: "Test")
}
