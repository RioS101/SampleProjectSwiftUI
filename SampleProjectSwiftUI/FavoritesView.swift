//
//  FavoritesView.swift
//  SampleProjectSwiftUI
//
//  Created by RS on 23.11.21.
//

import SwiftUI

struct FavoritesView: View {
    @Binding var favorites: [MenuItem]

    var body: some View {
        NavigationView {
            List {
                ForEach(favorites) { favorite in
                    ItemRow(item: favorite)
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView(favorites: .constant([MenuItem]()))
    }
}
