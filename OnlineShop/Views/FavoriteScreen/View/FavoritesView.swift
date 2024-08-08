//
//  FavoritesView.swift
//  OnlineShop
//
//  Created by Vlad on 8/8/24.
//

import SwiftUI
import FirebaseFirestore

struct FavoritesView: View {
    
    // MARK: - Properties
    @FirestoreQuery(collectionPath: "Shop", predicates: [.isEqualTo("isFavorite", true)]) private var favoritesItems: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns) {
                ForEach(favoritesItems) { item in
                    NavigationLink(destination: EmptyView()) {
                        ProductCartView(product: item)
                    }
                }
            }
        }
        .navigationTitle("Favorites")
    }
}

#Preview {
    FavoritesView()
}
