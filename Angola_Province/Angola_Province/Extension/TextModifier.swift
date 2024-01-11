//
//  TextModifier.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.caption)
            .foregroundStyle(.secondary)
    }
}


extension View{
    func textModifer() -> some View{
        modifier(TextModifier())
    }
}
