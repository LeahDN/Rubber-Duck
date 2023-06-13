//
//  ContentView.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//
// commit commit

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Sign in")
                NavigationLink(destination: Main()) {
                    Text("to main page")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
