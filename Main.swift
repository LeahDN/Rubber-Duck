//
//  Main.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Main")
                NavigationLink(destination: Info()) {
                    Text("to Info")
                }
                NavigationLink(destination: Disabilities()) {
                    Text("To Disabilites")
                }
                NavigationLink(destination: Mental()) {
                    Text("To Mental Health")
                }
                NavigationLink(destination: LGBTQIA_()) {
                    Text("To LGBTQIA+")
                }
                NavigationLink(destination: Environment()) {
                    Text("To Environment")
                }
            }
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
