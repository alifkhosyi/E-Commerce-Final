//
//  AddToCartView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 20/01/22.
//

import SwiftUI

struct AddToCartView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding()
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
