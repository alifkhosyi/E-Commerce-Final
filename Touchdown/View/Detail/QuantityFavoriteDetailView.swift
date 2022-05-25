//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 20/01/22.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter : Int = 0
    
    var body: some View {
        HStack {
            Button(action: {
                if counter > 0{
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
                    .foregroundColor(.black)
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            Button(action: {
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }
        .font(.system(.title, design: .rounded))
        .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
