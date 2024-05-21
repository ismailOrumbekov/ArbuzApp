import SwiftUI

struct AsyncImage: View {
    @State private var uiImage: UIImage? = nil
    let url: URL

    var body: some View {
        Group {
            if let uiImage = uiImage {
                Image(uiImage: uiImage)
                    .resizable()
            } else {
                Image(systemName: "photo.stack")
                    .resizable()
                    .foregroundColor(.green)
                    .onAppear {
                        loadImage()
                    }
            }
        }
    }

    private func loadImage() {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url),
               let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.uiImage = image
                }
            }
        }
    }
}
