//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct L22: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("LGBTQIA+ Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Two- thirds of LGBTQ+ people have experienced discrimination or abuse. About 9 out of 10 LGBTQ+ people have experienced verbal abuse. We can help solve this problem by teaching people more about the LGBTQ+ community.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("LDuck")
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

struct L22_Previews: PreviewProvider {
    static var previews: some View {
        L22()
    }
}

