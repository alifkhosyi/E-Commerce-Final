//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct CategoryItemView: View {
    let category : CategoryModel
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack {
                Image(category.image)
                    .resizable()
                    .renderingMode(.template)
                    .foregroundColor(.gray)
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    
                Text(category.name)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12)
                            .stroke(Color.gray ,lineWidth: 1))
        })
        
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
