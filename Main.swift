//
//  Main.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//



import SwiftUI

struct Main: View {
    
    //@Binding var Name ; " "
    
    var body: some View {
        NavigationStack {
            ZStack {
                //              Image("yellow")                    .resizable()
                //                   .ignoresSafeArea()
                Image("crumpled Paper bg")
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcome to Rubber Ducks <<name>>")
                        .font(.system(size: 50, weight: .light, design: .default))
                        .multilineTextAlignment(.center)
                        .padding(.all)
                    Text("This is a coloring app to help learn about hard subjects. This is your main page. Below you will find ducks about differnat topics. Click on these for coloring pages about them. Above you will find a grey duck icon. This will take you to our story/informaion page")
                        .font(.system(size: 25, weight: .light, design: .default))
                        .multilineTextAlignment(.center)
                        .padding([.leading, .bottom, .trailing])
                    Spacer()
                    
                    HStack{
                        Text("Disabilities")
                        
                        Text("Mental health")
                        
                        Text("LGBTQIA+")
                        
                        Text("Evironment")
                        
                        
                        
                        }
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


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
