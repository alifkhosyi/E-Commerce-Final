//
//  FooterView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offert the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright Alif Khosyi \n All right reserved")
                .foregroundColor(.gray)
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
    }
}
