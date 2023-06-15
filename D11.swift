//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct D11: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Disability Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("1 in 4 people will become disabled with a disability that keeps them from working for a year. one in 20 people will have a short term disability that lasts less than six months.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("disabilityDuck")
                    .resizable()
                    .frame(width: 500, height: 500)
            }
        }
    }
}
struct D11_Previews: PreviewProvider {
    static var previews: some View {
        D11()
    }
}

