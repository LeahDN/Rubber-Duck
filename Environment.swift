//
//  Environment.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct Environment: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightGreen")
                    .ignoresSafeArea()
                Image("lined paper bg")
                
                
                VStack {
                    Text("Environment")
                        .font(.system(size: 50, weight: .light, design: .default))
                        .fontWeight(.semibold)
                        .padding(.top, 30.0)
                    NavigationLink(destination: E1()) {
                        Image("environment1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal, 50.0)
                    }
                    NavigationLink(destination: E2()) {
                        Image("environment2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.leading, .bottom, .trailing], 50.0)
                    }
                    
                }
            }
        }
    }
}

struct Environment_Previews: PreviewProvider {
    static var previews: some View {
        Environment()
    }
}
