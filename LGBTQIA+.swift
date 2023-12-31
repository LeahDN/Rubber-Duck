//
//  LGBTQIA+.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct LGBTQIA_: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightRed")
                    .ignoresSafeArea()
                Image("lined paper bg")
                
                
                VStack {
                    Text("LGBTQIA+")
                        .font(.system(size: 50, weight: .light, design: .default))
                        .fontWeight(.semibold)
                        .padding(.top, 30.0)
                    NavigationLink(destination: L1()) {
                        Image("LGBTQIA+1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .trailing], 30.0)
                    }
                    NavigationLink(destination: L2()) {
                        Image("LGBTQIA+2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.leading, .bottom, .trailing], 30.0)
                    }
                    
                }
            }
        }
    }
}

struct LGBTQIA__Previews: PreviewProvider {
    static var previews: some View {
        LGBTQIA_()
    }
}
