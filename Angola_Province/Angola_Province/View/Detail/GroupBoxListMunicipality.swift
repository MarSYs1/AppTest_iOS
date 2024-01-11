//
//  GroupBoxListMunicipality.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct GroupBoxListMunicipality: View {
    
    var municipality: AngolaProvince
    
    var body: some View {
                VStack(alignment: .leading, spacing: 8){
                    ForEach(municipality.municipios, id: \.self){municipality in
                        
                        Text(municipality)
                            .font(.headline)
                            .fontWeight(.semibold)
                        
                        //Divider()
                       // .tint(redColor)
                        Rectangle()
                            .fill(Color.red)
                            .frame(height: 1)
                            .padding(.vertical,8)
            }
        }
        .frame(width: 300)
    }
}

/*#Preview {
    GroupBoxListMunicipality(municipality: MockData.devPreview.provinceInAngola[0])
}

#Preview {
    GroupBoxListMunicipality(municipality: MockData.devPreview.provinceInAngola[0])
        .preferredColorScheme(.dark)
} */
