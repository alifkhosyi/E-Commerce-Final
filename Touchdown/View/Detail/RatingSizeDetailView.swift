//
//  RatingSizeDetailView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 20/01/22.
//

import SwiftUI

struct RatingSizeDetailView: View {
    let sizes = ["S", "M", "L", "XL"]
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 5){
                Text("Ratings")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                HStack {
                    ForEach(1...5, id: \.self) {item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 5) {
                Text("Size")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                HStack {
                    ForEach (sizes, id: \.self){ item in
                        Button(action: {}, label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                                .stroke(colorGray, lineWidth: 1))
                        })
                    }
                }
            
            
            }
        }
    }
}

struct RatingSizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
