//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Aderemilekun Adele on 08/12/2023.
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
