//
//  AngolaProvince.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

struct AngolaProvince: Identifiable, Codable {
    
    let id,
        nome,
        fundada,
        capital,
        area,
        prefixoTelefonico,
        siteGovernoProvincial: String
    
    let municipios: [String]

    enum CodingKeys: String, CodingKey {
        case id, nome, fundada, capital, area
        case prefixoTelefonico = "prefixo_telefonico"
        case siteGovernoProvincial = "site_governo_provincial"
        case municipios
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        
        do {
            let municipalityString = try container.decode(String.self, forKey: .municipios)
            let municipalityData = municipalityString.data(using: .utf8) ?? Data()
            municipios = try JSONDecoder().decode([String].self, from: municipalityData)
        } catch {
            municipios = []
            print("Erro ao decodificar 'municipios': \(error)")
        }

        id = try container.decode(String.self, forKey: .id)
        nome = try container.decode(String.self, forKey: .nome)
        fundada = try container.decode(String.self, forKey: .fundada)
        capital = try container.decode(String.self, forKey: .capital)
        area = try container.decode(String.self, forKey: .area)
        prefixoTelefonico = try container.decode(String.self, forKey: .prefixoTelefonico)
        siteGovernoProvincial = try container.decode(String.self, forKey: .siteGovernoProvincial)
    }
}



