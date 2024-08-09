import Foundation
import FirebaseFirestore

final class ViewModel: ObservableObject {
    
    // MARK: - Properties
    private let db = Firestore.firestore().collection("Shop")
    
    // MARK: - Methods
    func toggleFavorite(product: Product) {
        updateItem(product, data: ["isFavorite": !product.isFavorite])
    }
    
    func addToCart(product: Product) {
        updateItem(product, data: ["quantityInCart" : 1])
    }
    
    func removeFromCart(product: Product) {
        updateItem(product, data: ["quantityInCart" : 0])
    }
    
    func increaseQuantity(product: Product) {
        let newQuantity = (product.quantityInCart ?? 0) + 1
        updateItem(product, data: ["quantityInCart": newQuantity])
    }
    
    func decreaseQuantity(product: Product) {
        let currentQuantity = product.quantityInCart ?? 0
        let newQuantity = max(currentQuantity - 1, 1)
        updateItem(product, data: ["quantityInCart": newQuantity])
    }
    
    private func updateItem(_ product: Product, data: [String: Any]) {
        guard let id = product.id else { return }
        db.document(id).updateData(data)
    }
}
