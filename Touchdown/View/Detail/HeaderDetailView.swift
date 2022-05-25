//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.black)
        }
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
    }
}
