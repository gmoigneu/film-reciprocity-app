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
    @State private var searchText = ""
    
    @ObservedObject var vm = FilmSelectionViewModel()
    
    var body: some View {
        let searchTextBinding = Binding {
            return searchText
        } set: {
            if(searchText != $0) {
                searchText = $0
                vm.search(text: searchText)
            }
        }
        
        VStack {
            ZStack(alignment: .trailing) {
                Rectangle().foregroundColor(Color.darkGray).cornerRadius(10)
                TextField("Search ...", text: searchTextBinding)
                    .background(Color.darkGray)
                    .padding(10)
                
                
                HStack {
                    Button {
                        searchText = ""
                        vm.clearSearchText()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(Color.white)
                            .font(.system(size: 14))
                    }.padding(.trailing, 10)
                }

                
            }.padding(20)
                .frame(height: 60)
            
            List {
//                Section(header: Text("Favorites")) {
//                }
                Section() {
                    ForEach(vm.filmsList) { film in
                        Text("\(film.manufacturer) \(film.name)")
                            .onTapGesture {
                                selectedFilm = film
                                showFilmSelection = false
                            }
                    }
                }
            }
            Spacer()
        }.onAppear() {
            self.vm.fetchData()
        }
    }
}

struct FilmSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        FilmSelectionView(showFilmSelection: .constant(true), selectedFilm: .constant(nil))
    }
}


