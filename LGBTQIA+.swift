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
                    Image("LGBTQIA+1")
                }
                NavigationLink(destination: L2()) {
                    Image("LGBTQIA+2")
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
