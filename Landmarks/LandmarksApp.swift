//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Arminius Atta on 10/09/2024.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
