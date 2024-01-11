//
//  RectangleCustom.swift
//  Angola
//
//  Created by Mauro de Oliveira André on 10/01/2024.
//

import SwiftUI

import SwiftUI

struct RectangleCustom: View {
    
    
    var width: Double
    var height: Double
    var image: String
    var isRectangleCustom: Bool = false
    
    var body: some View {
        ZStack{
            
            if isRectangleCustom{
                
                Rectangle()
                 .fill(LinearGradient(gradient: Gradient(colors: [redColor, redColor]),startPoint: .topLeading,endPoint:.bottomLeading))
                 .frame(width: width,height: height)
                 .clipShape(RoundedCorner(radius: 84, corners: [ .bottomRight]))
                
            }else{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .colorMultiply(redColor)
                    .frame(width: width,height: height)
                    .clipShape(RoundedCorner(radius: 84, corners: [ .bottomRight]))
            }
        }
    }
}

#Preview {
    RectangleCustom(width: 400, height: 322, image: imageWonder1)
}
