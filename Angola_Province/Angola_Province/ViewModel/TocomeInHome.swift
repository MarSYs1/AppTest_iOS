//
//  TocomeInHome.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI
import Combine

class ToComeInHome: ObservableObject {
   
    @Published var gotoHome: ViewNavigation = .onbording
    
    func goHome(){
        self.gotoHome = .onbording
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.gotoHome = .home
        }
    }
}

extension ToComeInHome{
    func homeView() -> some View{
        return RouterGoHome.makeHomeView()
    }
}


