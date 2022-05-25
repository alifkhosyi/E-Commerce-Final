//
//  Shop.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 20/01/22.
//

import Foundation

class Shop: ObservableObject {
   @Published var showingProduct : Bool = false
   @Published var selectedProduct : ProductModel? = nil
}
