import SwiftUI

struct CustomRemoteControllButton: View {
    
    // MARK: - Properties
    let name: String
    let action: () -> ()
    
    // MARK: - Body
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: name)
                .foregroundStyle(.primary)
                .font(.title)
        }
        .buttonStyle(.plain)
    }
}
