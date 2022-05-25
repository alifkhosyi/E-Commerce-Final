//
//  NavBarDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct NavBarDetailView: View {
    @EnvironmentObject var shop : Shop
    
    var body: some View {
        HStack {
            Button(action: {
                shop.selectedProduct = nil
                shop.showingProduct = false
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarDetailView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
            .padding()
    }
}
