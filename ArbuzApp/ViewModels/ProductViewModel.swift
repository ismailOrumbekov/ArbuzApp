//
//  ProductViewModel.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import Foundation

class ProductViewModel: ObservableObject{
    @Published var product: Product
    
    init(product: Product) {
        self.product = product
    }
}
