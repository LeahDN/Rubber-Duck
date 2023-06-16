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
//              Image("yellow")                    .resizable()
//                   .ignoresSafeArea()
                Image("crumpled Paper bg")
                  
                
                VStack {
                    Text("Welcome to Rubber Ducks!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .padding(.all)
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
                            .padding(.all)
                            .scaledToFit()
                            .frame(width: 100.0, height: 100.0)
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
