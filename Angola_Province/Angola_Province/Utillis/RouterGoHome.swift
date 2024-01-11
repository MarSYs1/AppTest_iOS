//
//  RouterGoHome.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

enum RouterGoHome{
    static func makeHomeView() -> some View{
        return HomeProvinceView()
           // .environmentObject(ProvinceAngolaViewModel())
    }
}
