//
//  NavigationBackButtonVIew.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import SwiftUI

struct NavigationBackButtonVIew: View {
    var body: some View {
        HStack {
            Image(systemName: "xmark")
                .foregroundColor(.black)
                .padding(.leading)
            Button {
                backButtonTaped()

            } label: {
                
            }
            .padding(.trailing)
            Spacer()
        }
        .frame(width: Resources.screen.width)
        .background(Color.white)
        .padding(.bottom, 10)
    }
    func backButtonTaped(){
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
    }
    
}

#Preview {
    NavigationBackButtonVIew()
}
