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
        VStack {
            MapView()
                .ignoresSafeArea(.all, edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

// The structure that declares a preview for the 'ContentView'.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
