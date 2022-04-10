//
//  FileSelectionViewModel.swift
//  Film Reciprocity
//
//  Created by Guillaume Moigneu on 4/10/22.

import Foundation

class FilmSelectionViewModel : ObservableObject {
    @Published var filmsList = [Film]()
   
    func fetchData() {
        self.filmsList = films
    }
    
    func search(text : String) {
        if(text != "") {
            self.filmsList = films.filter({ film in
                if (film.name.lowercased().contains(text.lowercased())) {
                    return true
                }
                
                if (film.manufacturer.lowercased().contains(text.lowercased())) {
                    return true
                }
                
                if (String(film.iso).lowercased().contains(text.lowercased())) {
                    return true
                }
                
                return false
            })
        } else {
            self.filmsList = films
        }
    }
    
    public func updateSearchText(with text: String) {
        print("DEBG: updateSearchText")
        self.search(text: text)
    }
    
    public func clearSearchText() {
        self.search(text: "")
    }
}
