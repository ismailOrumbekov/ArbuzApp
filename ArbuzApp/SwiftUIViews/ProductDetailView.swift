import SwiftUI

struct ProductDetailView: View {
    var productID: String
    var navigationController: UINavigationController?
    @State private var showConfirmation = false
    @StateObject var viewModel = ProductViewModel(
        product: Product(id: "-1",
                         title: "",
                         imageURL: "",
                         price: 1,
                         description: "",
                         unit: "",
                         minimumOrdersCount: 1,
                         ordersCount: 0,
                         isFavourite: false,
                         isRecommended: false))
    
    @State var count = 0
    @State private var isLoading = true

    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    
                    ScrollView {
                        VStack {
                            if !isLoading{
                                AsyncImage(url: URL(string: viewModel.product.imageURL)!)
                                            .aspectRatio(contentMode: .fill)
                                            .frame(height: 400)
                                            .clipped()
                                            .cornerRadius(16)
                            }
                            
                                        
                            Text(viewModel.product.title)
                                .font(.title)
                                .fontWeight(.bold)
                                .frame(width: Resources.screen.width * 0.9, alignment: .center)
                                .multilineTextAlignment(.center)
                            
                            Text("\(viewModel.product.price) \(viewModel.product.unit)/Тг")
                                .foregroundColor(.gray)
                                .fontWeight(.medium)
                            
                            VStack{
                                Text("Описание:")
                                    .fontWeight(.semibold)
                                    .frame(width: Resources.screen.width, alignment: .leading)
                                    .padding(.leading)
                                    .padding(.vertical)
                                    .font(.title3)
                               
                                Text(viewModel.product.description)
                                    .frame(width: Resources.screen.width * 0.9)
                            }
                            .background(Color.white)
                            .frame(width: Resources.screen.width * 0.98)
                            .cornerRadius(13.0)
                        }
                        .background(Resources.Colors.passiveColor)
                    }
                    .onAppear {
                        getProductData()
                        isLoading = false
                    }
                }
                
                VStack {
                        Spacer()
                        HStack(spacing: 30) {
                            if count > 0 {
                                Button {
                                    if count > 0 {
                                        count -= 1
                                    }
                                } label: {
                                    Image(systemName: count > 1 ? "minus" : "trash")
                                            .font(.system(size: count > 0 ? 20 : 10, weight: .bold))
                                            .padding(.leading, count > 0 ? 20 : 15)
                                    
                                }
                                .foregroundColor(.white)
                            }
                            
                            Button {
                                if count > 0 {
                                    let position = Position(id: "\(BusketViewModel.shared.positions.count)", product: viewModel.product, count: count)
                                                    
                                                    BusketViewModel.shared.addPosition(position: position)
                                                    
                                                    withAnimation {
                                                        showConfirmation = true
                                                    }
                                                    
                                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                                        withAnimation {
                                                            showConfirmation = false
                                                        }
                                                        dismissPresentedViewController()
                                                    }
                                }
                                
                            } label: {
                                Text("Добавить в корзину: \(count)")
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            
                            Button {
                                count += 1
                            } label: {
                                Image(systemName: "plus")
                                    .font(.system(size: 20, weight: .bold))
                                    .padding(.trailing, 20)
                            }
                            .foregroundColor(.white)
                        }
                        .frame(height: 70)
                        .background(Color.green)
                        .cornerRadius(15)
                        .padding(.horizontal)
                     }
                if showConfirmation {
                    Image(systemName: "checkmark.seal.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.green)
                                        .frame(width: 100, height: 100) // Увеличен размер
                                        .transition(.scale)                             }
                
            }
            .navigationBarBackButtonHidden(false)
        }
    }
    
    
    
    func getProductData(){
        DatabaseManager.shared.fetchProduct(id: productID) { product in
            guard let product = product else { return }
            viewModel.product = product
        }
    }
    func dismissPresentedViewController() {
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true, completion: nil)
    }
}

#Preview {
    ProductDetailView(productID: "1", navigationController: nil)
}
