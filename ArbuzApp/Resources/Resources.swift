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
//    Product(id: "1",
//            title: "Помидоры",
//            imageURL: "djsf",
//            price: 400,
//            description: "Красные помидоры, местные, свежие и сочные.",
//            unit: "кг",
//            minimumOrdersCount: 1,
//            ordersCount: 1,
//            isFavourite: false,
//            isRecommended: true),

    Product(id: "2",
            title: "Огурцы",
            imageURL: "https://sevastopol.su/sites/default/files/styles/wide/public/2023-04-25/ogurcy.jpg.webp",
            price: 300,
            description: "Свежие огурцы, хрустящие и ароматные.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: true),

    Product(id: "3",
            title: "Картофель",
            imageURL: "https://s0.rbk.ru/v6_top_pics/media/img/1/20/346959880836201.webp",
            price: 250,
            description: "Отборный картофель, идеально подходит для запекания.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),

    Product(id: "4",
            title: "Морковь",
            imageURL: "https://cdnn1.inosmi.ru/img/24924/80/249248034_0:103:1920:1183_1920x0_80_0_0_a9cc894d3ad3828c01f8c3ea68da33e1.jpg",
            price: 150,
            description: "Свежая морковь, сладкая и хрустящая.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: true),

    Product(id: "5",
            title: "Лук",
            imageURL: "https://kuban24.tv/wp-content/uploads/2023/07/photo_2023-07-26_14-02-17.jpg",
            price: 100,
            description: "Лук репчатый, острый и ароматный.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),

    Product(id: "6",
            title: "Капуста",
            imageURL: "https://f-o-o-d.ru/upload/iblock/95b/xcwgxokfl5x49co3xhqcjsg2pagt2rk5/kapusta.jpg",
            price: 200,
            description: "Капуста белокочанная, свежая и сочная.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: true),

    Product(id: "7",
            title: "Свекла",
            imageURL: "https://cdnn21.img.ria.ru/images/07e5/06/09/1736313827_0:218:2867:1830_1920x0_80_0_0_0db48726cdfeac4b1a34c921557e70ce.jpg",
            price: 180,
            description: "Свекла столовая, идеально подходит для борща.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),

    Product(id: "8",
            title: "Перец",
            imageURL: "https://avatars.dzeninfra.ru/get-zen_doc/1352765/pub_5d2c7af5e854a900ac3dfef9_5d2c7b04c31e4900aebf52fe/scale_1200",
            price: 350,
            description: "Сладкий перец, свежий и ароматный.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),

    Product(id: "9",
            title: "Чеснок",
            imageURL: "https://cdnn21.img.ria.ru/images/07e7/09/0d/1896116048_0:208:3072:1936_1920x0_80_0_0_611e99a5688afc70b92bed3235b26d56.jpg",
            price: 500,
            description: "Чеснок, острый и ароматный, идеален для приправ.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),

    Product(id: "10",
            title: "Редис",
            imageURL: "https://e3.edimdoma.ru/data/ingredients/0000/1058/1058-ed4_wide.jpg?1487746604",
            price: 220,
            description: "Свежий редис, хрустящий и сочный.",
            unit: "кг",
            minimumOrdersCount: 1,
            ordersCount: 1,
            isFavourite: false,
            isRecommended: false),
    
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
