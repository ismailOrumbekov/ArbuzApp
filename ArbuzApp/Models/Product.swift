//
//  Product.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import Foundation


struct Product: Identifiable{
    var id: String
    var title: String
    var imageURL: String
    var price: Int
    var description: String
    var unit: String
    
    var minimumOrdersCount: Int
    var ordersCount: Int
    
    var isFavourite: Bool
    var isRecommended: Bool
}
