//
//  DatabaseManager.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 20.05.2024.
//

import Foundation

class DatabaseManager{
    
    public static let shared = DatabaseManager()
    
    public func fetchProduct(id: String, completion: (Product?) -> Void){
        guard let product = Resources.products.first(where: { $0.id == id })
        else{
            completion(nil)
            return
        }
        
        completion(product)
    }
    
    public func fetchAllProducts() -> [Product]{
        return Resources.products
    }
    
    public func fetchFavouriteProducts() -> [Product]{
        fetchAllProducts().filter { $0.isFavourite == true }
    }
}
