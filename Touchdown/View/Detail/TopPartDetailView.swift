//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .scaleEffect(1.35, anchor: .leading)
            }
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(x: 15)
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}
