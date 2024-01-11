//
//  DetailView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    var province: AngolaProvince
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
                
                ZStack{
                    RectangleCustom(width: 400, height: 322, image: imageWonder1, isRectangleCustom: true)
                    
                    VStack(alignment: .leading){
                        Text(province.nome)
                            .font(.largeTitle.smallCaps())
                            .foregroundStyle(.white)
            
                        Text("Municipios")
                            .font(.title2.smallCaps())
                            .foregroundStyle(.white)
                    
                    }
                    .vSpacing(.bottom)
                    .padding(.bottom,30)
                    .hSpacing(.leading)
                    .padding(.horizontal,30)
                }
             
                VStack(alignment: .center, spacing: 20){
                
                    GroupBoxListMunicipality(municipality: province)

                }
                .padding(.horizontal)
                .padding(.top, 50)
        }
        .scrollTargetLayout()
        .ignoresSafeArea()
    }
}

/*#Preview {
    DetailView(province: MockData.devPreview.provinceInAngola[0])
} */
