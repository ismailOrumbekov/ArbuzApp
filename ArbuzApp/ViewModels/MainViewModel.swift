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
        ProductCell(product: Product(id: "2",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "3",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "4",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "5",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "6",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false)),
        ProductCell(product: Product(id: "7",
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
