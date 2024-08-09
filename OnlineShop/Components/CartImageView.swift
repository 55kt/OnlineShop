import SwiftUI

struct CartImageView: View {
    
    // MARK: - Properties
    let url: URL
    let width: CGFloat
    let height: CGFloat
    
    // MARK: - Body
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: width, height: height)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        } placeholder: {
            ProgressView()
                .frame(width: width, height: height)
        }
    }
}
