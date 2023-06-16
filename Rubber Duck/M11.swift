//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct M11: View {
    var body: some View {
                NavigationStack{
                    VStack{
                        Text("Mental Health Fact:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                        
                        Text("Ways to help take care of your mental health are relaxing, finding ways to learn and be creative (like this app), and connecting with others. It's important to take care of your mental health by using some of these methods.")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding()
                             
                        Image("duck")
                            .resizable()
                            .frame(width: 400, height: 400)
                        NavigationLink(destination: Main()) {
                            Image("grey arrow")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 150.0, height: 60.0)
                        }
                    }
                }
            }
        }
struct M11_Previews: PreviewProvider {
    static var previews: some View {
        M11()
    }
}
