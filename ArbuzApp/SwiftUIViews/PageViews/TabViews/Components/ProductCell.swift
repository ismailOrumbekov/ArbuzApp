//
//  ProductCell.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import SwiftUI

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
                
                
                
                HStack(spacing: 10){
                    Text("\(Resources.formatNumber(product.price))тг")
                        .fontWeight(.bold)
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
                .background(Color(hexString: "#F5F5F5"))
                .cornerRadius(15)
                
                

            }
            
        }
        .frame(width: Resources.screen.width * 0.45, height: Resources.screen.width * 0.55)
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
