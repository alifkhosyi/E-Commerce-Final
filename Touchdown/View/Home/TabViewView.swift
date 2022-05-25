//
//  TabViewView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 19/01/22.
//

import SwiftUI

struct TabViewView: View {
    
    var body: some View {
        TabView{
            ForEach(players) { item in
                PlayerView(players: item)
                    .padding(.top)
                    .padding(.horizontal)
            }
        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
        TabViewView()
            .previewLayout(.sizeThatFits)
            .background(Color.gray)
        }
    }
}
