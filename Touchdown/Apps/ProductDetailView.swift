//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        VStack (alignment: .leading){
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
         
                HeaderDetailView()
                    .padding()
                    .shadow(color: .black, radius: 2, x: 3, y: 2)
             
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
            
            VStack{
                RatingSizeDetailView()
                    .padding(.bottom)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QuantityFavoriteDetailView()
                    .padding(.bottom)
                
                AddToCartView()
                    .padding(.bottom)
            }
            .padding(.horizontal)
            .background(Color.white
                            .clipShape(CustomShape())
                            .padding(.top, -80))
            
        }
        .zIndex(0)
        .ignoresSafeArea()
        .background(Color(
                        red: shop.selectedProduct?.red ?? sampleProduct.red,
                        green: shop.selectedProduct?.green ?? sampleProduct.green,
                        blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                        .ignoresSafeArea())
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
