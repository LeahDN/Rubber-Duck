//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct E11: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Environment Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Over 27,000 trees are cut down every day. Trees are important for cleaning the air we breathe. Trees are also an important part for several animal habitats and cutting them down can leave these animals homeless.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("Educk")
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
struct E11_Previews: PreviewProvider {
    static var previews: some View {
        E11()
    }
}
