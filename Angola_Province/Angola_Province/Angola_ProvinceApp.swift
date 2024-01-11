//
//  Angola_ProvinceApp.swift
//  Angola_Province
//
//  Created by Mauro de Oliveira André on 11/01/2024.
//

import SwiftUI

@main
struct Angola_ProvinceApp: App {
    @StateObject var viewModelProvince = ProvinceViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                OnbordingView(viewModelGoToHome: ToComeInHome())
                    .environmentObject(viewModelProvince)
            }
        }
    }
}
