//
//  CustomMainButton.swift
//  OnlineShop
//
//  Created by Vlad on 9/8/24.
//

import SwiftUI

struct CustomMainButton: View {
    // MARK: - Properties
    let title: String
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            Text(title)
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
}

// MARK: - Preview
#Preview {
    CustomMainButton(title: "button") {}
}
