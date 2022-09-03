//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Jason Ou on 2022/9/3.
//

import SwiftUI

@main // <- The App's entry point.
struct LandmarksApp: App { // The protocol that any App using the SwiftUI app life cycle must conform to.
    @StateObject private var modelData = ModelData()
    
    var body: some Scene { // Returns one or more scenes.
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
