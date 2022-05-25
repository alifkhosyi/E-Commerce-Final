//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct BrandItemView: View {
    
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false, content: {
                LazyHGrid(rows: gridLayout, alignment: .center, spacing: rowSpacing, pinnedViews: [], content: {
                    ForEach(brands){ brand in
                        Image(brand.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                            .shadow(radius: 5)
                    }
                })
                .frame(height: 200)
                .padding()
            })
    }
}
    
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

