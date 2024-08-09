import SwiftUI
import FirebaseFirestore

struct CartView: View {
    // MARK: - Properties
    @FirestoreQuery(collectionPath: "Shop") private var items: [Product]
    
    // MARK: - Body
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(items.filter { $0.quantityInCart ?? 0 > 0 } ) { item in
                    ProductRow(product: item)
                }
            }
            
            Text("Total: $0")
                .titleFont()
                .padding(.bottom)
            
            CustomMainButton(title: "Buy") {
                // some action
            }
            .padding(.horizontal, 30)
        }
        .navigationTitle("Cart")
        .background(.secondary.opacity(0.3))
    }
}

// MARK: - Preview
#Preview {
    CartView()
}
