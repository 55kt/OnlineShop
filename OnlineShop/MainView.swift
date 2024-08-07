//
//  ContentView.swift
//  OnlineShop
//
//  Created by Vlad on 7/8/24.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    
    @FirestoreQuery(collectionPath: "Shop") var items: [Product]
    
    var body: some View {
        List {
            ForEach (items) { item in
                HStack {
                    Text(item.name)
                    Text("\(item.price)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
