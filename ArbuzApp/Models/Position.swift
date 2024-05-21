//
//  Position.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import Foundation

struct Position: Identifiable{
    var id: String
    var product: Product
    var count: Int
    var cost : Int {
        return product.price * count
    }
}
