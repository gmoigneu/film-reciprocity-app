//
//  Film.swift
//  ReciprocityTimer
//
//  Created by Guillaume Moigneu on 1/13/22.
//

import Foundation

struct Speed : Hashable {
    var label: String
    var value: Float
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value*1000)
    }
}

struct Film: Identifiable {
    var id: String
    var manufacturer: String
    var name: String
    var iso: Int
    var description: String
    var source: String?
    var hasFormula: Bool
    var values: [Double: Double]?
    
    var formula: ((Double) -> Double)?
        
    func getTime(time: Double) -> Double {
        return formula?(time) ?? 0.0
    }
}
