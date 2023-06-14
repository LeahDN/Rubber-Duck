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
                //Image("Background")
                
                VStack {
                    Text("Welcome to Rubber Ducks!")
                        .font(.system(size: 40))
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                        .multilineTextAlignment(.center)
                    Spacer()
                    HStack {
                        NavigationLink(destination: Info()) {
                            Image("W")
                                .resizable(resizingMode: .stretch)
                                .scaledToFit()
                                .frame(width: 0.2, height: 0.2)
                        }
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
                
                }
                .navigationTitle("Home")
                .navigationBarTitleDisplayMode(NavigationBarItem.TitleDisplayMode.inline)
                .navigationBarHidden(false)
                
                //                Text("Main")
                //                NavigationLink(destination: Info()) {
                //                    Text("to Info")
                //                }
                //                NavigationLink(destination: Disabilities()) {
                //                    Text("To Disabilites")
                //                }
                //                NavigationLink(destination: Mental()) {
                //                    Text("To Mental Health")
                //                }
                //                NavigationLink(destination: LGBTQIA_()) {
                //                    Text("To LGBTQIA+")
                //                }
                //                NavigationLink(destination: Environment()) {
                //                    Text("To Environment")
                //                }
                
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
