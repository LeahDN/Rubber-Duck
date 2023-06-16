//
//  ContentView.swift
//  Rubber Duck
//
//  Created by Scholar on 6/13/23.
//
// commit commit

import SwiftUI

struct ContentView: View {
    @State private var inputName = name = name()
    @State var num = 0
    var body: some View {
        NavigationStack {
            ZStack {
                Image("lined paper bg")
                VStack {
                    Text("Please sign in then click the arrow to move on")
                        .font(.system(size: 35, weight: .light, design: .default))
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 50.0)
                    
                    TextField("Username", text: $inputName)
                        .font(.system(size: 60, weight: .light, design: .default))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Main(name ; $inputName)) {
                        Image("grey arrow")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding([.leading, .bottom, .trailing], 100.0)
//                        Button("Submit") {
//                            num = 1
//                        }
//                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.18))
//                        .padding(.horizontal)
//                        .buttonStyle(.borderedProminent)
//                        .tint(Color("lightGray"))
                    }
                    .padding(.all)
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(name; $name)
    }
}
