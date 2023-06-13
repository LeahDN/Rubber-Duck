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
            VStack {
                Text("Mental Health")
                NavigationLink(destination: M1()) {
                    Text("First Drawing")
                }
                NavigationLink(destination: M2()) {
                    Text("Second Drawing")
                }

            }
        }    }
}

struct Mental_Previews: PreviewProvider {
    static var previews: some View {
        Mental()
    }
}
