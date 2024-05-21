//
//  BusketViewModel.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import Foundation

class BusketViewModel: ObservableObject{
    @Published var positions = [Position]()
    
    
    func addPosition(position: Position){
        positions.append(position)
    }
}
