//
//  ContentView.swift
//  SampleProjectSwiftUI
//
//  Created by RS on 21.11.21.
//

import SwiftUI

struct ContentView: View {
    @Binding var favorites: [MenuItem]
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header:                     Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: ItemDetail(favorites: $favorites, item: item)) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(favorites: .constant([MenuItem]()))
    }
}
