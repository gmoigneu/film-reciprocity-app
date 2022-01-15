//
//  SettingsView.swift
//  Film Reciprocity
//
//  Created by Guillaume Moigneu on 1/14/22.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var showSettings : Bool
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Bundle.main.appName) v\(Bundle.main.versionNumber)").bold()
                Spacer()
                Button {
                    showSettings = false
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(Color.lightGray)
                }

            }.padding(.bottom, 20)
            
            VStack(alignment: .leading, spacing: 20) {
                Divider()
                 .frame(height: 1)
                 .background(Color.darkGray)
                
                Link(destination: URL(string: "mailto:g@moigneu.com")!) {
                    HStack {
                        Text("Send feedback")
                        Spacer()
                        Image(systemName: "paperplane")
                    }
                    
                }
                
                Divider()
                 .frame(height: 1)
                 .background(Color.darkGray)
                
                Link(destination: URL(string: "https://github.com/gmoigneu/film-reciprocity-app")!) {
                    HStack {
                        Text("View GitHub repository")
                        Spacer()
                        Image(systemName: "text.alignleft")
                    }
                    
                }
                
                Divider()
                 .frame(height: 1)
                 .background(Color.darkGray)
                
                Link(destination: URL(string: "https://raw.githubusercontent.com/gmoigneu/film-reciprocity-app/main/LICENSE")!) {
                    HStack {
                        Text("View the GPL v3 License")
                        Spacer()
                        Image(systemName: "building.columns")
                    }
                    
                }
                
                Divider()
                 .frame(height: 1)
                 .background(Color.darkGray)
                
                Link(destination: URL(string: "https://github.com/gmoigneu/film-reciprocity-app/blob/main/PRIVACY.md")!) {
                    HStack {
                        Text("Privacy policy")
                        Spacer()
                        Image(systemName: "lock.square")
                    }
                    
                }
                
                Divider()
                 .frame(height: 1)
                 .background(Color.darkGray)
                
                Link(destination: URL(string: "https://github.com/gmoigneu/film-reciprocity-app/blob/main/TERMS.md")!) {
                    HStack {
                        Text("Terms and conditions")
                        Spacer()
                        Image(systemName: "newspaper")
                    }
                    
                }
            }.foregroundColor(Color.white)

            Spacer()
        }.padding(.all, 20)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.darkGray
            SettingsView(showSettings: .constant(true)).foregroundColor(.white)
        }.edgesIgnoringSafeArea(.all)
        
    }
}
