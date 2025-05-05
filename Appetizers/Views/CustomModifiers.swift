//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Sandeep Sahani on 02/05/25.
//

import SwiftUI

struct StandardButtonSize: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonSize())
    }
}
