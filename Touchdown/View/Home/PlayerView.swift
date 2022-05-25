//
//  PlayerView.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

struct PlayerView: View {
    //MARK : - Property
    let players : PlayerModel
    
    //MARK : - Body
    var body: some View {
        Image(players.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(players: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
