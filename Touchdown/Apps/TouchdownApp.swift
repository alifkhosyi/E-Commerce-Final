//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Alif Khosyi Rahmatullah on 18/01/22.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
