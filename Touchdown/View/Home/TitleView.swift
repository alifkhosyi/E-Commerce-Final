//
//  TitleView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct TitleView: View {
    var title : String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.heavy)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
