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
            VStack {
                Text("LGBTQIA+")
                NavigationLink(destination: L1()) {
                    Text("First Drawing")
                }
                NavigationLink(destination: L2()) {
                    Text("Second Drawing")
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
