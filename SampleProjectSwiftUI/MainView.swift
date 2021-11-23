//
//  MainView.swift
//  SampleProjectSwiftUI
//
//  Created by RS on 22.11.21.
//

import SwiftUI

struct MainView: View {
    @State private var favorites: [MenuItem] = []
    
    var body: some View {
        TabView {
            ContentView(favorites: $favorites)
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            FavoritesView(favorites: $favorites)
                .tabItem {
                    Label("Favorites", systemImage: "star")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(Order())
    }
}
