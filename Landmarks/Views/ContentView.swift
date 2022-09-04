//
//  ContentView.swift
//  Landmarks
//
//  Created by Jason Ou on 2022/9/3.
//

import SwiftUI

// The 'View' conforming structure that describes the view's content and layout.
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured, list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

// The structure that declares a preview for the 'ContentView'.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
