//
//  HomeProvinceView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct HomeProvinceView: View {
    
    @ObservedObject var viewModel = ProvinceViewModel()
    
   
    var body: some View {
        NavigationStack{
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 40){
                                 
                    ZStack{
                        RectangleCustom(width: 400, height: 322, image: imageWonder2)
                        Text("Um dos\nMaiores de Africa")
                            .font(.largeTitle.smallCaps())
                            .foregroundStyle(.white)
                            .vSpacing(.bottom)
                            .padding(.bottom,30)
                    }
                           
                    LazyVStack(spacing: 20){
                        ForEach(viewModel.allProvinceAngola.indices, id: \.self){ index in
                            let province = viewModel.allProvinceAngola[index]
                            let backgroundColor = index % 2 == 0 ? redColor : Color.black
                            NavigationLink {
                                DetailView(province: province)
                            } label: {
                                ProvinceRowView(province: province, backgroundColor: backgroundColor)
                                    .padding(.horizontal)
                            }
                        }
                    }
                    .padding(.bottom, 30)
                }
            }
            .scrollTargetLayout()
            .ignoresSafeArea()
            .navigationTitle("")
            .onAppear {
                viewModel.dataService.getProvince()
             }
            .toolbar(.hidden)
        }
    }
}

#Preview {
    HomeProvinceView()
}
