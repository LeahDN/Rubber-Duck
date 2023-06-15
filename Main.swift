//
//  Main.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Ducks")
                    .resizable()
                    .ignoresSafeArea()
                Image("crumpled_paper_bg")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                
                VStack {
                    Text("Welcome to Rubber Ducks!")
                        .font(.system(size: 40))
                        .multilineTextAlignment(.center)
                    Spacer()
                    HStack {
                        NavigationLink(destination: Disabilities()) {
                            Image("D")
                                .resizable()
                                .scaledToFit()
                            
                        }
                        NavigationLink(destination: Mental()) {
                            Image("M")
                                .resizable()
                                .scaledToFit()
                        }
                        NavigationLink(destination: LGBTQIA_()) {
                            Image("L")
                                .resizable()
                                .scaledToFit()
                        }
                        NavigationLink(destination: Environment()) {
                            Image("E")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
                .padding(.all)
            
                .toolbar {
                    NavigationLink(destination: Info()) {
                        Image("W")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                .navigationBarHidden(false)
                
            }
            .frame(height: nil)
        }
    }
//        .navigationTitle("Home")
//        .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
//        .navigationBarHidden(false)
    }


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
