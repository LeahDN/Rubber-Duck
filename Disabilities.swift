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
            VStack {
                Text("Disabilities")
                NavigationLink(destination: D1()) {
                    Text("First Drawing")
                }
                NavigationLink(destination: D2()) {
                    Text("Second Drawing")
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
