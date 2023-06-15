//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct E22: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Environment Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("A glass bottle can take up to 1 million years to decompose and even over a million years if it's in a landfill. Glass is reusable, so it's important to repurpose and reuse glass so it doesn't end up sitting in a landfill for millions of years.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("Educk")
                    .resizable()
                    .frame(width: 500, height: 500)
                NavigationLink(destination: Main()) {
                    Text("Continue")
            }
        }
    }
}
struct E22_Previews: PreviewProvider {
    static var previews: some View {
        E22()
    }
}
