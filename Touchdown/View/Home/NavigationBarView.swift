//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            HStack{
                Text("Touch".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Image("logo-dark")
                
                Text("Down".uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .frame(width: 13, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                        .offset(x: 13, y: -10)
                }
            })
            
        }
    }
}

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
