//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Isaac Iniongun on 25/03/2023.
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
