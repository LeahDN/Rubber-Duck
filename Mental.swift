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
                    Image("mental1")
                }
                NavigationLink(destination: M2()) {
                    Image("mental2")
                }

            }
        }    }
}

struct Mental_Previews: PreviewProvider {
    static var previews: some View {
        Mental()
    }
}
