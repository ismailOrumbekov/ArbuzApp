//
//  NavigationBackButtonVIew.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import SwiftUI

struct NavigationBackButtonVIew: View {
    var body: some View {
        HStack{
            
        }
    }
    func backButtonTaped(){
        UIApplication.shared.windows.first?.rootViewController?.dismiss(animated: true)
    }
    
}

#Preview {
    NavigationBackButtonVIew()
}
