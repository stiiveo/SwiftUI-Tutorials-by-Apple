//
//  ContentView.swift
//  Landmarks
//
//  Created by Jason Ou on 2022/9/3.
//

import SwiftUI

// The 'View' conforming structure that describes the view's content and layout.
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// The structure that declares a preview for the 'ContentView'.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
