//
//  FilmSelectionView.swift
//  ReciprocityTimer
//
//  Created by Guillaume Moigneu on 1/14/22.
//

import SwiftUI

struct FilmSelectionView: View {
    @Binding var showFilmSelection : Bool
    @Binding var selectedFilm : Film?
    
    var body: some View {
        VStack {
            List {
//                Section(header: Text("Favorites")) {
//                }
                Section(header: Text("All Film Stocks")) {
                    ForEach(films) { film in
                        Text("\(film.manufacturer) \(film.name)")
                            .onTapGesture {
                                selectedFilm = film
                                showFilmSelection = false
                            }
                    }
                }
            }
            Spacer()
        }
    }
}

struct FilmSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        FilmSelectionView(showFilmSelection: .constant(true), selectedFilm: .constant(nil))
    }
}
