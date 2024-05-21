//
//  PositionCell.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import SwiftUI

struct PositionCell: View {
    var position: Position
    @ObservedObject var viewModel: BusketViewModel

    var body: some View {
        HStack{
           

            AsyncImage(url: URL(string: position.product.imageURL)!)
                
                .frame(width: Resources.screen.width * 0.2, height: Resources.screen.width * 0.2)
                .clipped()
                .cornerRadius(16)
            
            VStack(alignment: .leading){
                Text(position.product.title)
                    .fontWeight(.semibold)
                    .padding(.leading)
                
                Text("\(position.product.price)тг/\(position.product.unit)")
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .font(.system(.footnote))
                    .padding(.leading)

                HStack{
                    HStack(spacing: 15) {
                       
                            Button {
                                if position.count > 1 {
                                    viewModel.decreaseCount(position: position)
                                    
                                }else{
                                    viewModel.removePosition(position: position)
                                }
                                
                            } label: {
                                if position.count > 1 {
                                    Image(systemName: "minus")
                                        .font(.system(size: 10, weight: .bold))
                                        .padding(.leading, 15)
                                }else{
                                    Image(systemName: "trash")
                                        .font(.system(size: 10, weight: .bold))
                                        .padding(.leading, 15)
                                }
                            }
                            .buttonStyle(BorderlessButtonStyle())
                            .foregroundColor(.white)
                        
                        
                        Text("\(position.count)")
                            .foregroundColor(.white)
                    
                        
                        
                        Button {
                            viewModel.increaseCount(position: position)
                        } label: {
                            Image(systemName: "plus")
                                .font(.system(size: 10, weight: .bold))
                                .padding(.trailing, 15)
                        }
                        .buttonStyle(BorderlessButtonStyle())
                        .foregroundColor(.white)
                        
                    }
                    .frame(height: 50)
                    .background(Color.green)
                    .cornerRadius(15)
                    .padding(.top)
                    .frame(width: Resources.screen.width * 0.35)
                    
                      
                    
                    Text("\(position.cost) тг")
                        .fontWeight(.semibold)
                        .padding(.top)
                        .font(.subheadline)
                    
                    Spacer()
                }
                
            }
            Spacer()
        }
        .padding(.leading)
        .frame(alignment: .leading)
        
        
    }
}

#Preview {
    let viewModel = BusketViewModel.shared
        let product = Product(
            id: "1",
            title: "Помидоры",
            imageURL: "djsf",
            price: 400,
            description: "Красные помидоры, местные...",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false
        )
        let position = Position(id: "1", product: product, count: 1)
        viewModel.addPosition(position: position)

    return PositionCell(position: position, viewModel: viewModel)}
