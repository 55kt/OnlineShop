import SwiftUI

struct RemoteControlRowView: View {
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .trailing, spacing: 25) {
            Button {
                // Some action
            } label: {
                Image(systemName: "xmark.circle.fill")
                    .font(.title2)
            }
            .buttonStyle(.plain)
            
            HStack {
                Button {
                    // Some action
                } label: {
                    Image(systemName: "minus.rectangle.fill")
                        .foregroundStyle(.primary)
                        .font(.title)
                }
                .buttonStyle(.plain)
                
                if let quantityInCart = product.quantityInCart {
                    Text("\(quantityInCart)")
                        .titleFont()
                }
                
                Button {
                    // Some action
                } label: {
                    Image(systemName: "plus.rectangle.fill")
                        .foregroundStyle(.primary)
                        .font(.title)
                }
                .buttonStyle(.plain)
            }
        }
        .padding()
    }
}
