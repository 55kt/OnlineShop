//
//  DetailView.swift
//  OnlineShop
//
//  Created by Vlad on 8/8/24.
//

import SwiftUI

struct DetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    // MARK: - Body
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                if let url = URL(string: product.image) {
                    CartImageView(url: url, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 1.7)
                        .ignoresSafeArea()
                        .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 8)
                }
                
                DetailInfoView(product: product)
            }
            .background(.secondary.opacity(0.3))
            .navigationBarBackButtonHidden()
            BackButtonView()
                .padding(.leading)
        }
    }
}

// MARK: - Preview
#Preview {
    DetailView(
        product: Product(
            name: "Sony A7 III",
            description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer aliquam odio sit amet massa consectetur, quis iaculis arcu interdum. Suspendisse tincidunt imperdiet quam ac tempus. Nunc lacinia nunc in enim egestas, eu tincidunt ante molestie. Maecenas vestibulum maximus diam, eu molestie dui elementum ut. Cras justo orci, tempus ut laoreet rutrum, condimentum id ipsum. Etiam et ex sit amet ligula efficitur vehicula. Donec in leo tincidunt, molestie nisl sed, faucibus quam.",
            image: "https://firebasestorage.googleapis.com/v0/b/onlineshop-2b337.appspot.com/o/products%2Fphotomachine.jpg?alt=media&token=fae23702-0978-4a1f-bde5-414444d838b9",
            price: 12356,
            isFavorite: false
        )
    )
    .environmentObject(ViewModel())
}
