//
//  ContentView.swift
//  OnlineShop
//
//  Created by Vlad on 7/8/24.
//

import SwiftUI
import FirebaseFirestore

struct MainView: View {
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
            .padding(.horizontal, 10)
            .background(.secondary.opacity(0.3))
            .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
            
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
    MainView()
}
