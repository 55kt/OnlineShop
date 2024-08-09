//
//  ProductRow.swift
//  OnlineShop
//
//  Created by Vlad on 9/8/24.
//

import SwiftUI

struct ProductRow: View {
    // MARK: - Properties
    let product: Product
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .trailing) {
            HStack(spacing: 20) {
                
                /// Image
                if let url = URL(string: product.image) {
                    CartImageView(url: url, width: 100, height: 100)
                }
                
                /// Info
                VStack(alignment: .leading, spacing: 20) {
                    Text(product.name)
                    
                    Text("$\(product.price)")
                }
                Spacer()
            }
            .padding(10)
            .background(.background)
            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            RemoteControlRowView(product: product)
        }
        .shadow(color: .black.opacity(0.1), radius: 7, x: 5, y: 6)
        .padding(.horizontal, 10)
    }
}

// MARK: - Preview
#Preview {
    ProductRow (
        product: Product(
            name: "Sony A7 III",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquam odio sit amet massa consectetur, quis iaculis arcu interdum. Suspendisse tincidunt imperdiet quam ac tempus. Nunc lacinia nunc in enim egestas, eu tincidunt ante molestie. Maecenas vestibulum maximus diam, eu molestie dui elementum ut. Cras justo orci, tempus ut laoreet rutrum, condimentum id ipsum. Etiam et ex sit amet ligula efficitur vehicula. Donec in leo tincidunt, molestie nisl sed, faucibus quam.",
            image: "https://firebasestorage.googleapis.com/v0/b/onlineshop-2b337.appspot.com/o/products%2Fphotomachine.jpg?alt=media&token=fae23702-0978-4a1f-bde5-414444d838b9",
            price: 12356,
            isFavorite: false
        )
    )
}


