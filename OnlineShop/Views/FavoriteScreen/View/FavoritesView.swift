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
                    NavigationLink(destination: DetailView(product: item)) {
                        ProductCartView(product: item)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal, 10)
        .background(.secondary.opacity(0.3))
        .navigationTitle("Favorites")
    }
}

#Preview {
    FavoritesView()
}
