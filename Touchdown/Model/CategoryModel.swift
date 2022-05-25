//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import Foundation

struct CategoryModel : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}
