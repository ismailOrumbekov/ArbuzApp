import SwiftUI

struct ProductDetailView: View {
    var productID: String
    var navigationController: UINavigationController?
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
    
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    NavigationBackButtonVIew()
                        .background(Color.white)
                        .padding(.top, 20)
                    ScrollView {
                        VStack {
                            Image("tomat")
                                .resizable()
                                .frame(height: 400)
                                .frame(maxWidth: .infinity, maxHeight:400)
                                .padding(.top)
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
                    }
                }
                
                VStack {
                                    Spacer()
                                    HStack(spacing: 50) {
                                        if count > 0 {
                                            Button {
                                                if count > 0 {
                                                    count -= 1
                                                }
                                            } label: {
                                                Image(systemName: "minus")
                                                    .font(.system(size: 20, weight: .bold))
                                                    .padding(.leading, 20)
                                            }
                                            .foregroundColor(.white)
                                        }
                                        
                                        Button {
                                            print("Добавить в корзину")
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
                
            }
            .navigationBarBackButtonHidden(false)
        }
        .navigationTitle("title")
    }
    
    func backButtonTaped(){
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
    }
    
    func getProductData(){
        DatabaseManager.shared.fetchProduct(id: productID) { product in
            guard let product = product else { return }
            viewModel.product = product
        }
    }
}

#Preview {
    ProductDetailView(productID: "1", navigationController: nil)
}
