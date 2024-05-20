//
//  HeaderView.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 17.05.2024.
//

import SwiftUI

struct HeaderView: View {
    var title: String
    var body: some View {
        
        HStack{
            
            Text(title)
                .font(.custom(Resources.font, size: 30))
                .fontWeight(.bold)
            
        }
        .padding()
    }
}

#Preview {
    MainPageView()
}
