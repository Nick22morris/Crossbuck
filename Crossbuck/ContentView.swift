//
//  ContentView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            MenuView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle.fill")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
