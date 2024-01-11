//
//  Extension+View.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

extension View{
    @ViewBuilder
    func hSpacing(_ alignment: Alignment = .center) -> some View{
        self
            .frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment: Alignment = .center) -> some View{
        self
            .frame(maxHeight: .infinity, alignment: alignment)
    }
}
