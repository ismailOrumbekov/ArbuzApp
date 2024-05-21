//
//  BusketPageView.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import SwiftUI

struct BusketPageView: View {
    
    @StateObject var viewModel: BusketViewModel
    
    var body: some View {
        ZStack{
            VStack{
                List(viewModel.positions.enumerated().map({ $0 }), id: \.element.id)
                { index, position in
                    PositionCell(position: viewModel.positions[index], viewModel: viewModel)
                    
                            }
               
                
                
                Button {
                    print("Оплата прошла успешно)")
                } label: {
                    VStack{
                        Text("Перейти к оплате")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.horizontal, 15)
                            .padding(.top, 15)
                        
                        Text("\(viewModel.cost) тг")
                            .foregroundColor(.white)
                            .padding(.bottom)

                    }
                    
                }
                .background(Color.green)
                .cornerRadius(20)
                if viewModel.cost < 8000{
                    Text("Для бесплатной доставки нехватает:\(8000 - viewModel.cost) ")
                        .foregroundColor(.red)
                }else{
                    Text("Доставка будет бесплатной !")
                        .foregroundColor(.green)
                }
                
            }
            
            
            
        }
        
        
       
        
    }
}

#Preview {
    BusketPageView(viewModel: BusketViewModel.shared)
}
