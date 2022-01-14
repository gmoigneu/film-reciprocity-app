//
//  ContentView.swift
//  ReciprocityTimer
//
//  Created by Guillaume Moigneu on 1/13/22.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var vm : HomeViewModel

    
    init() {
      self.vm = HomeViewModel()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Reciprocity Timer").font(.title)
                Spacer()
                
                Text("Selected film").font(.headline)
                
                ZStack {
                    ZStack {
                        if(vm.selectedFilm != nil) {
                            Text("\(vm.selectedFilm!.manufacturer) \(vm.selectedFilm!.name)")
                            .padding(40)
                        } else {
                            Text("No film selected")
                            .padding(40)
                        }
                    }.background(Color.darkGray)
                }
                .onTapGesture {
                    vm.showFilmSelection = true
                }
                .frame(height: 50)
                .cornerRadius(8)
                
                
                Spacer()
                
                HStack {
                    VStack {
                        Text("Measure (s)").bold()
                        ZStack(alignment: .center) {
                            Color.darkGray.edgesIgnoringSafeArea(.all)
                            TextField("", text: $vm.exposureTime)
                                .background(Color.darkGray)
                                .foregroundColor(.white)
                                .padding(10)
                                .multilineTextAlignment(.center)
                        }.frame(height: 80)
                        .cornerRadius(8)
                        .font(.system(size: 32))
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Corrected (s)").bold()
                        ZStack(alignment: .center) {
                            Color.darkGray.edgesIgnoringSafeArea(.all)
                            TextField("-", text: $vm.exposureResult)
                                .disabled(true)
                                .background(Color.darkGray)
                                .foregroundColor(.white)
                                .padding(10)
                                .multilineTextAlignment(.center)
                        }.frame(height: 80)
                        .cornerRadius(8)
                        .font(.system(size: 32))
                    }
                }
                
                Spacer()
                
                if(vm.selectedFilm != nil) {
                    VStack {
                        Text(vm.selectedFilm!.description)
                        if(vm.selectedFilm!.source != nil) {
                            Link(destination: URL(string: vm.selectedFilm!.source!)!) {
                                Text("View source")
                            }.padding(.top, 20)
                        }
                    }
                    
                }
                
                Spacer()
                
            }.sheet(isPresented: $vm.showFilmSelection) {
                FilmSelectionView(
                    showFilmSelection: $vm.showFilmSelection,
                    selectedFilm: $vm.selectedFilm
                )
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 40)
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
