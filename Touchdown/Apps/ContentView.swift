//
//  ContentView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

struct ContentView: View {
    //MARK : - PROPERTY
    @EnvironmentObject var shop : Shop
    
    //MARK : - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil  {
                VStack (spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            TabViewView()
                                .frame(width:400, height: 250, alignment: .center)
                            
                            CategoryGridView()
                       
                            HStack{
                                TitleView(title: "Helmets")
                                .padding(.horizontal)
                                Spacer()
                            }
                            
                            LazyVGrid(columns: gridLayout, content: {
                                ForEach(products){product in
                                    ProductItemView(procuct: product)
                                        .onTapGesture {
                                            shop.showingProduct = true
                                            shop.selectedProduct = product
                                        }
                                }
                            })
                            .padding()
                            
                            HStack{
                                TitleView(title: "Brands")
                                .padding(.horizontal)
                                Spacer()
                            }
                            
                            BrandItemView()
                            
                            FooterView()
                                .padding()
                        }
                    })
                }
                .background(backgroundColor.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}

