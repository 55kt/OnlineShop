//
//  DetailInfoView.swift
//  OnlineShop
//
//  Created by Vlad on 8/8/24.
//

import SwiftUI

struct DetailInfoView: View {
    // MARK: - Properties
    let product: Product

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text(product.name)
                    .titleFont()
                Spacer()
                Text("$\(product.price)")
                    .titleFont()
            }
            
            Text(product.description)
                .subTitle()
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(6)
            
            Spacer()
            
            Button {
                // Some action
            } label: {
                Text("Add to cart")
                    .titleFont()
                    .frame(maxWidth: .infinity)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.black)
                    .clipShape(Capsule())
                    .shadow(color: .black.opacity(0.3), radius: 10, x: 5, y: 8)
            }
        }
        .padding(.horizontal, 30)
    }
}
