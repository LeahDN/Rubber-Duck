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
            VStack {
                Text("Environment")
                NavigationLink(destination: E1()) {
                    Text("First Drawing")
                }
                NavigationLink(destination: E2()) {
                    Text("Second Drawing")
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
