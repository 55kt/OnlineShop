import SwiftUI

struct RemoteControlRowView: View {
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .trailing, spacing: 25) {
            /// Remove Button
            CustomRemoteControllButton(name: "xmark.circle.fill") {
                vm.removeFromCart(product: product)
            }
            
            HStack {
                /// Decrease
                CustomRemoteControllButton(name: "minus.rectangle.fill") {
                    vm.decreaseQuantity(product: product)
                }
                
                /// Quantity
                if let quantityInCart = product.quantityInCart {
                    Text("\(quantityInCart)")
                        .titleFont()
                }
                /// Increase
                CustomRemoteControllButton(name: "plus.rectangle.fill") {
                    vm.increaseQuantity(product: product)
                }
            }
        }
        .padding()
    }
}
