//
// ContentView.swift
// our app
//
// Created by Scholar on 6/12/23.
//
import SwiftUI
struct Line2 {
  var points = [CGPoint]()
  var color: Color = .red
  var lineWidth: Double = 12
}
struct M2: View {
  @State private var currentLine = Line2()
  @State private var lines: [Line2] = []
  @State private var selectedColor: Color = .red
  @State private var thickness: Double = 0.0
//    @State private var
  var body: some View {
      NavigationStack {
          ZStack{
              Color("lightGray")
                  .ignoresSafeArea()
              VStack {
                  
//                  Button("Finish"){
//                      theImage = ("duck2")
//                      textTitle = ("More than 50 million Americans struggle with mental illness. Ways to help take care of you mental health is to Relax , Find ways to learn and be creative, [Maybe like this app], and connect with others.")}
                  
                  
                  Canvas{ context, size in
                      for line in lines {
                          var path = Path()
                          path.addLines(line.points)
                          context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                      }
                  }
                  .gesture(DragGesture(minimumDistance: 0, coordinateSpace:.local )
                    .onChanged({value in
                        let newPoint =   value.location
                        currentLine.points.append(newPoint)
                        self.lines.append(currentLine)
                    })
                        .onEnded({value in
                            self.currentLine = Line2(points: [], color: selectedColor, lineWidth: thickness)
                        })
                  )
                  HStack {
                      Slider(value: $thickness, in: 1...20){
                          Text("Thickness")
                      }.frame(maxWidth: 100)
                          .onChange(of: thickness){newThickness in
                              currentLine.lineWidth = newThickness
                          }
                      Divider()
                      ColorPickerView(selectedColor: $selectedColor)
                          .onChange(of: selectedColor) {
                              newColor in
                              currentLine.color = newColor
                          }
                  }
              }
              .frame(minWidth: 200, minHeight:200)
              .padding(.trailing)
              Image("mentalHealth2")
                  .resizable()
                  .padding()
                  .scaledToFit()
                  .frame(width: 500, height: 500)
                  .offset(x:-10, y:-175)
                  .opacity(0.5)
          }
      }
  }
  struct M2_Previews: PreviewProvider {
    static var previews: some View {
      M2()
    }
  }
}
