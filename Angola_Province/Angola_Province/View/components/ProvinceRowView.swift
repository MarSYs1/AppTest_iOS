//
//  ProvinceRowView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct ProvinceRowView: View {
    
    var province: AngolaProvince
    var backgroundColor: Color
    
    var body: some View {
        HStack(spacing: 12){
    
                Text(province.nome)
                .font(.title3.smallCaps())
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.horizontal)
                
                
            .hSpacing(.leading)
        }
        .frame(width: 320, height: 80)
        .background(backgroundColor, in: .rect(cornerRadius: 14))
    }
}

/*#Preview {
    ProvinceRowView(province: MockData.devPreview.provinceInAngola[0])
}


#Preview {
    ProvinceRowView(province: MockData.devPreview.provinceInAngola[0])
        .preferredColorScheme(.dark)
} */
