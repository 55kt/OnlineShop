import SwiftUI

struct FavoriteButton: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.title2)
            .imageScale(.large)
    }
}

#Preview {
    FavoriteButton()
}
