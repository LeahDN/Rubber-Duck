//
//  Disabilities.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct Disabilities: View {
    var body: some View {
        NavigationStack {
            
            
            ZStack {
                Color("lightBlue")
                    .ignoresSafeArea()
                Image("lined paper bg")
                
                
                VStack {
                    Text("Disabilities")
                        .font(.system(size: 50, weight: .light, design: .default))
                        .fontWeight(.semibold)
                        .padding(.top, 30.0)
                    NavigationLink(destination: D1()) {
                        Image("disabilities1")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.top, .leading, .trailing], 50.0)
                    }
                    NavigationLink(destination: D2()) {
                        Image("sun")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.leading, .bottom, .trailing], 50.0)
                    }
                    
                }
            }
        }
    }
    
    struct Disabilities_Previews: PreviewProvider {
        static var previews: some View {
            Disabilities()
        }
    }
}
