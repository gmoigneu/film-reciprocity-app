//
//  ContentViewModel.swift
//  ReciprocityTimer
//
//  Created by Guillaume Moigneu on 1/14/22.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var selectedFilm : Film?  {
        didSet {
          process()
        }
    }
    @Published var showFilmSelection : Bool = false
    @Published var exposureTime : String = "1" {
        didSet {
          process()
        }
    }
    @Published var exposureResult : String = ""
    
    init() {
        
    }
    
    func process() {
        if(selectedFilm != nil) {
            exposureResult = "\(selectedFilm!.getTime(time: Double(exposureTime) ?? 0.0))"
        }
    }
    
}
