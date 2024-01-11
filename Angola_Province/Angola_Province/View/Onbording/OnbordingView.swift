//
//  OnbordingView.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct OnbordingView: View {
    
    @ObservedObject var viewModelGoToHome: ToComeInHome
   
    @StateObject var viewModelProvince = ProvinceViewModel()
    
    var body: some View {
        ZStack{
            if case ViewNavigation.home = viewModelGoToHome.gotoHome{
                viewModelGoToHome.homeView()
             
            }else{
                VStack{
                    
                    ZStack{
                        
                        RectangleCustom(width: 400, height: 682, image: imageWonder1)
                            
                        
                        VStack(alignment: .leading, spacing: 20){
                           
                            HStack{
                                Text("Angola\npaís\ngrande\ne belo!")
                                    .font(.largeTitle)
                                    .multilineTextAlignment(.leading)
                                    .foregroundStyle(.white)
                                    .shadow(radius: 12)
                            }
                            .hSpacing(.leading)
                        }
                        .padding(.horizontal, 40)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        viewModelGoToHome.goHome()
                    }, label: {
                        Text("Entrar")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .frame(maxWidth: 260)
                            .padding(.vertical, 14)
                            .background(redColor, in: .rect(cornerRadius: 20))
                            .contentShape(.rect)
                    })
                    .padding(.horizontal)
                    
                    Spacer()
                }
            .ignoresSafeArea()
            }
        }
    }
}

#Preview(){
    OnbordingView(viewModelGoToHome: ToComeInHome())
        //.environmentObject(viewModelProvince)
}
