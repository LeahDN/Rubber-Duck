//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct L11: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("LGBTQIA+ Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("About 30% - 40% of LGBTQIA youth experience depression or anxiety. They might avoid getting help because of fear of discrimination or negative remarks being directed towards them.")
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
struct L11_Previews: PreviewProvider {
    static var previews: some View {
        L11()
    }
}

