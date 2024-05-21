//
//  Image Exst.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import Foundation
import SwiftUI

extension Image {
    func data(url: URL, completion: @escaping (Image) -> Void) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                if let uiImage = UIImage(data: data) {
                    let image = Image(uiImage: uiImage)
                    DispatchQueue.main.async {
                        completion(image)
                    }
                    return
                }
            }
            DispatchQueue.main.async {
                completion(self)
            }
        }
    }
}
