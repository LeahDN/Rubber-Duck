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
//                Image("yellow")
//                    .resizable()
//                    .ignoresSafeArea()
                Image("news paper bg")
                
                
                VStack {
                    Text("Disabilities")
                        .fontWeight(.semibold)
                    NavigationLink(destination: D1()) {
                        Image("disabilities1")
                    }
                    NavigationLink(destination: D2()) {
                        Image("disabilities2")
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
