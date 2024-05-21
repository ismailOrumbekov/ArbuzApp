//
//  BusketViewModel.swift
//  ArbuzApp
//
//  Created by Исмаил Орумбеков on 21.05.2024.
//

import Foundation

class BusketViewModel: ObservableObject{
    
    public static let shared = BusketViewModel()
    private init(){}
    @Published var positions = [Position]()
    
    var cost: Int {
        var sum = 0
        
        for position in positions {
            sum += position.cost
        }
        return sum
    }
    
    func addPosition(position: Position) {
            positions.append(position)
        }
        
        func removePosition(position: Position) {
            if let index = positions.firstIndex(where: { $0.id == position.id }) {
                positions.remove(at: index)
            }
        }
        
        func removePositions(at offsets: IndexSet) {
            positions.remove(atOffsets: offsets)
        }
        
        func decreaseCount(position: Position) {
            if let index = positions.firstIndex(where: { $0.id == position.id }) {
                positions[index].count -= 1
                if positions[index].count == 0 {
                    removePosition(position: position)
                }
            }
        }
    
    func increaseCount(position: Position) {
            if let index = positions.firstIndex(where: { $0.id == position.id }) {
                positions[index].count += 1
            }
        }
}
