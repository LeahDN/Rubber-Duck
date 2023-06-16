//
//  M22.swift
//  Rubber Duck
//
//  Created by Scholar on 6/15/23.
//

import SwiftUI

struct M22: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Mental Health Fact:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                
                Text("More than 50 million Americans struggle with mental illness. 1 in 25 adults in the United States live with a serious mental illness. These statistics show that mental illness is much more common than you might think.")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .padding()
                Image("duck")
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
struct M22_Previews: PreviewProvider {
    static var previews: some View {
        M22()
    }
}
