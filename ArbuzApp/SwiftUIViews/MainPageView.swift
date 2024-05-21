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
                        
                        
                        
                        ForEach(DatabaseManager.shared.fetchFavouriteProducts(), id: \.id) { item in
                                
                                ProductCell(product: item)
                                    .frame(width: Resources.screen.width / 2.2)
                                    .padding(.horizontal, 8)
                            }
                        }
                    .padding(.horizontal, 5)
                    .padding(.vertical, 5)
                }
                .padding(.vertical)
                
                Divider()
                

                
                
                
                Text("Все товары")
                    .font(.custom(Resources.font, size: 22))
                    .fontWeight(.semibold)
                    .padding()
                    
                
                
                ScrollView(.vertical, showsIndicators: false) {
                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 8),
                                                GridItem(.flexible(), spacing: 8)], spacing: 8
                            ) {
                                ForEach(DatabaseManager.shared.fetchAllProducts(), id: \.id) { item in
                                    ProductCell(product: item)
                                }
                                
                                
                            }
                            .padding(.horizontal, 8)
                            .padding(.vertical, 8)
                        }


            }
        }
        
    }
    


}

#Preview {
    MainPageView()
}

