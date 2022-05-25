//
//  Constant.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

// DATA
let players : [PlayerModel] = Bundle.main.decode("player.json")
let categories : [CategoryModel] = Bundle.main.decode("category.json")
let products : [ProductModel] = Bundle.main.decode("product.json")
let brands : [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct : ProductModel = products[0]

// COLOR
let backgroundColor : Color = Color("backgroundColor")
let colorGray : Color = Color(UIColor.systemGray4)

// LAYOUT
let columnSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
