//
//  ProvinceDataService.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI
import Combine


class ProvinceDataService: ObservableObject {
    @Published var allProvince: [AngolaProvince] = []
    private var provinceSubscription: AnyCancellable?

    init() {
        getProvince()
    }

    func getProvince() {
        guard let url = URL(string: "https://angolaapi.onrender.com/api/v1/geography/provinces") else {
            return
        }

        provinceSubscription = URLSession.shared.dataTaskPublisher(for: url)
            .map(\.data)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Erro na chamada da API: \(error.localizedDescription)")
                }
            }, receiveValue: { [weak self] data in
    
                print(String(data: data, encoding: .utf8) ?? "Dados não puderam ser convertidos para String")

                do {
                    let decodedData = try JSONDecoder().decode([AngolaProvince].self, from: data)
                    self?.allProvince = decodedData
                } catch let error {
                    print("Erro na decodificação: \(error)")
            }
        })
    }
}
