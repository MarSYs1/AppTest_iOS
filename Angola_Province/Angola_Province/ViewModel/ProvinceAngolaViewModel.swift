//
//  ProvinceAngolaViewModel.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI
import Combine



  class ProvinceViewModel: ObservableObject {
    @Published var allProvinceAngola: [AngolaProvince] = []
     let dataService = ProvinceDataService()
     var cancellables = Set<AnyCancellable>()

    init() {
        /* DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
            // self.allProvinceAngola.append(contentsOf: MockData.instance.provinceInAngola)
         } */
        addProvince()
    }

    func addProvince() {
        dataService.$allProvince
            .sink { [weak self] (returnedProvince) in
                self?.allProvinceAngola = returnedProvince
            }
            .store(in: &cancellables)
    }
}


