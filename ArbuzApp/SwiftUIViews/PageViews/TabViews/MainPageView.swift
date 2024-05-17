import SwiftUI

struct MainPageView: View {
    
    let layout = [GridItem(.adaptive(minimum: Resources.screen.width / 2.2))]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HeaderView(title: "Главная")
                    .padding(.horizontal)
                
                Text("Популярное")
                    .font(.custom(Resources.font, size: 22))
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                            ForEach(MainViewModel.shared.products, id: \.product.id) { item in
                                ProductCell(product: item.product)
                                    .frame(width: Resources.screen.width / 2.2)
                                    .padding(.horizontal, 8)
                            }
                        }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 5)
                }
                
                
                
                
//                ScrollView(.vertical, showsIndicators: false) {
//                    LazyVGrid(columns: [GridItem(.flexible(), spacing: 8), GridItem(.flexible(), spacing: 8)], spacing: 8) {
//                        ForEach(MainViewModel.shared.products, id: \.product.id) { item in
//                            ProductCell(product: item.product)
//                                .frame(width: (Resources.screen.width - 16 - 8) / 2, height: (Resources.screen.width - 16 - 8) / 2)
//                                .padding(8)
//                                .background(Color.black)
//                        }
//                    }
//                    .padding(.horizontal, 8)
//                    .padding(.vertical, 50)
//                }


            }
        }
        
    }
}

#Preview {
    MainPageView()
}
