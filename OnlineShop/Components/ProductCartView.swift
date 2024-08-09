import SwiftUI

struct ProductCartView: View {
    // MARK: - Properties
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    // MARK: - Body
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .topTrailing) {
                    if let url = URL(string: product.image) {
                        CartImageView(url: url, width: size.width, height: size.height)
                        
                        // Favorite Button
                        Button {
                            vm.toggleFavorite(product: product)
                        } label: {
                            Image(systemName: "heart.fill")
                                .padding(10)
                                .foregroundColor(product.isFavorite ? .red : .white)
                                .background(.black)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
                VStack(alignment: .leading) {
                    Text(product.name)
                        .titleFont()
                        .lineLimit(1)
                    
                    
                    Text("$\(product.price)")
                        .subTitle()
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding(10)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
    }
}

// MARK: - Preview
#Preview {
    MainView()
        .environmentObject(ViewModel())
}
