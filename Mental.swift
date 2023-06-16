//
//  Mental.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct Mental: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("lightYellow")
                    .ignoresSafeArea()
                Image("lined paper bg")
                
                
                VStack {
                    Text("Mental Health")
                        .font(.system(size: 50, weight: .light, design: .default))
                        .fontWeight(.semibold)
                        .padding(.top, 30.0)
                    
                    NavigationLink(destination: M1()) {
                        Image("mental1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal, 50.0)
                        
                    }
                    .padding()
                    NavigationLink(destination: M2()) {
                        Image("mental2")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.leading, .bottom, .trailing], 50.0)
                    }
                    
                }
            }    }
    }
}

struct Mental_Previews: PreviewProvider {
    static var previews: some View {
        Mental()
    }
}
