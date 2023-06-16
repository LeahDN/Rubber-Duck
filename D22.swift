//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct D22: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Disability Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("You might think that most disabilities are caused by accidents, like a car accident or falling from a high place. In reality only 9 percent of disabilities are caused by accidents. The other 91 percent are caused by illness.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("disabilityDuck")
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
struct D22_Previews: PreviewProvider {
    static var previews: some View {
        D22()
    }
}

