import Foundation
import FirebaseFirestore

struct Product: Codable, Identifiable {
    @DocumentID var id: String?
    var name: String
    var description: String
    var image: String
    var price: Int
    var isFavorite: Bool
    var quantityInCart: Int?
    
}
