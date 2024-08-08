//
//  ContentView.swift
//  OnlineShop
//
//  Created by Vlad on 7/8/24.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    // MARK: - Properties
    @FirestoreQuery(collectionPath: "Shop") var items: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(items) { item in
                        ProductCartView(product: item)
                    }
                }
            }
            /// Navigation Bar
            .navigationTitle("Products")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink(destination: FavoritesView()) {
                        Image(systemName: "heart.fill")
                            .font(.title2)
                            .imageScale(.large)
                    }
                    .buttonStyle(.plain)
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: CartView()) {
                        Image(systemName: "cart.fill")
                            .font(.title2)
                            .imageScale(.large)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
