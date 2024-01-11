//
//  MockData.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI


class MockData{
    
    static let instance = MockData()
    
   private init(){}
    
    let provinceInAngola: [AngolaProvince] = [
        
        
       /* AngolaProvince(id: "3da181d3-bee0-4aa0-ab10-d37c78b911f4",
                       nome: "Bengo",
                       fundada: "28 de Fevereiro de 1919",
                       capital: "Caxito",
                       area: "31.371 km²",
                       prefixoTelefonico: "+244",
                       siteGovernoProvincial: "https://www.bengo.gov.ao",
                       municipios: ["Ambriz", "Bula Atumba", "Dande", "Dembos", "Nambuangongo", "Pango Aluquém"]),
    
        AngolaProvince(id: "0fbcbfcd-fba8-40ff-b48e-6fcb9b3bad47",
                       nome: "Cabinda",
                       fundada: "28 de Fevereiro de 1919",
                       capital: "Cabinda",
                       area: "7.283 km²",
                       prefixoTelefonico: "+244",
                       siteGovernoProvincial: "https://www.cabinda.gov.ao",
                       municipios: ["Belize", "Buco-Zau", "Cabinda", "Cacongo"]),
        
        
        AngolaProvince(id: "d054ff4d-8c3b-4ff5-a4d5-5a3cd3ed240b",
                       nome: "Luanda",
                       fundada: "1605",
                       capital: "Luanda",
                       area: "18.826 km²",
                       prefixoTelefonico: "+244",
                       siteGovernoProvincial: "https://www.luanda.gov.ao",
                       municipios: ["Belas", "Cacuaco", "Cazenga", "Ícolo e Bengo", "Luanda", "Quilamba Quiaxi", "Quissama", "Talatona", "Viana"]),
        
        
        AngolaProvince(id: "8ff6f38e-8e3b-49ad-9dfe-bc602766c50a",
                       nome: "Huambo",
                       fundada: "21 de Setembro de 1912",
                       capital: "Huambo",
                       area: "35.771 km²",
                       prefixoTelefonico: "+244",
                       siteGovernoProvincial: "https://www.huambo.gov.ao",
                       municipios: ["Bailundo", "Cachiungo", "Caála", "Ecunha",
                                    "Huambo", "Londuimbali", "Longonjo", "Mungo",
                                    "Chicala-Choloanga", "Chinjenje", "Ucuma"]) */
    ]
    
}


extension MockData{
    static var devPreview: MockData{
        return MockData.instance
    }
}
 
 

