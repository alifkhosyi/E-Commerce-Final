//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct ProductItemView: View {
    let procuct : ProductModel
    
    var body: some View {
        VStack (alignment: .leading){
            ZStack {
                Image(procuct.image)
                    .resizable()
                    .scaledToFit()
            }
            .background(Color(red: procuct.red, green: procuct.green, blue: procuct.blue))
            .cornerRadius(12)
            
            Text(procuct.name)
                .font(.title3)
                .fontWeight(.heavy)
            
            Text(procuct.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        }
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(procuct: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
