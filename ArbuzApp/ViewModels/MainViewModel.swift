//
//  MainViewModel.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import Foundation


class MainViewModel: ObservableObject{
    static let shared = MainViewModel()
    
    var products = [
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false))
    
    ]
}
