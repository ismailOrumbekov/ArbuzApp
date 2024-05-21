//
//  ProductCell.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import SwiftUI
import UIKit

struct ProductCell: View {
    var product: Product
    
    
    var body: some View {
        VStack{
            Image("tomat")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: Resources.screen.width * 0.45)
                .clipped()
                .cornerRadius(16)
                .onTapGesture {
                    presentViewController()
                }
            VStack{
                Text(product.title)
                    .font(.custom(Resources.font, size: 17))
                    .lineLimit(2)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal, 8)
                    .frame(maxWidth: .infinity, alignment: .center )

                HStack{
                    Text("\(product.price) тг/\(product.unit)")
                        .font(.custom(Resources.font, size: 15))
                    
                    Text("* \(product.minimumOrdersCount) \(product.unit)")
                        .font(.custom(Resources.font, size: 15))

                }
                .onTapGesture {
                    presentViewController()
                }
                
                
                
                HStack(spacing: 10){
                    Text("\(Resources.formatNumber(product.price))тг")
                        .fontWeight(.bold)
                        .padding(.trailing, 20)
                    
                    Button {
                        print("hello world")
                    } label: {
                        Image(systemName: "plus")
                            .font(.title2)
                            .foregroundColor(.green)
                    }

                }
                .padding(.horizontal, 10)
                .padding(.vertical, 10)
                .background(Resources.Colors.blockColor)
                .cornerRadius(15)
                
                

            }
            
        }
        .frame(width: Resources.screen.width * 0.45, height: Resources.screen.width * 0.55)
        .padding(.bottom)
    }
    


    func presentViewController() {
            let productDetailView = ProductDetailView(productID: product.id, navigationController: nil)
            let hostingController = UIHostingController(rootView: productDetailView)
            
            let navigationController = UINavigationController(rootViewController: hostingController)
            navigationController.isNavigationBarHidden = true
            UIApplication.shared.windows.first?.rootViewController?.present(navigationController, 
                                                                            animated: true,
                                                                            completion: nil)
        }

}

#Preview {
    ProductCell(product: Product(id: "1", 
                                 title: "Помидоры городские местные",
                                 imageURL: "djsf",
                                 price: 4000,
                                 description: "Красные помидоры, местные уацу цуац уацу",
                                 unit: "кг",
                                 minimumOrdersCount: 1,
                                 ordersCount: 1,
                                 isFavourite: false,
                                 isRecommended: false))
}
