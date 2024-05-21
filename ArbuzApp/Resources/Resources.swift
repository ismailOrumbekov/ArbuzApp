//
//  Resources.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import Foundation
import SwiftUI

struct Resources{
    public static let screen = UIScreen.main.bounds
    public static let font = "AvenirNext-regular"
    
    
    struct Colors{
        public static let blockColor = Color(hexString: "#F5F5F5")
        public static let passiveColor = Color(hexString: "#EDEEEE")
    }
    
    
    public static func formatNumber(_ price: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = " " 
        if let formattedPrice = formatter.string(from: NSNumber(value: price)) {
            return "\(formattedPrice) "
        } else {
            return "\(price) "
        }
    }
    
    
    
    
   static let products = [
        Product(id: "1",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные Красные помидоры, местные v Красные помидоры, местныеv v v vКрасные помидоры, местные Красные помидоры, местные ",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false),
         Product(id: "2",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: false,
                                     isRecommended: false),
        Product(id: "3",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: true,
                                     isRecommended: false),
        Product(id: "4",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: true,
                                     isRecommended: false),
        Product(id: "5",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: true,
                                     isRecommended: false),
        Product(id: "6",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: true,
                                     isRecommended: false),
       Product(id: "7",
                                     title: "Помидоры",
                                     imageURL: "djsf",
                                     price: 400,
                                     description: "Красные помидоры, местные",
                                     unit: "кг",
                                     minimumOrdersCount: 1,
                                     ordersCount: 1,
                                     isFavourite: true,
                                     isRecommended: false)
    
    ]
}

extension Color {
    init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255)

//        self.init(red: red, green: green, blue: blue)
    }
}
