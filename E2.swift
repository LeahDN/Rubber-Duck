//
// ContentView.swift
// our app
//
// Created by Scholar on 6/12/23.
//
import SwiftUI
struct Line9 {
  var points = [CGPoint]()
  var color: Color = .red
  var lineWidth: Double = 12
}
struct E2: View {
  @State private var currentLine = Line9()
  @State private var lines: [Line9] = []
  @State private var selectedColor: Color = .red
  @State private var thickness: Double = 0.0
  var body: some View {
      NavigationStack {
          ZStack{
              Color("lightGray")
                  .ignoresSafeArea()
              VStack {
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
                            self.currentLine = Line9 (points: [], color: selectedColor, lineWidth: thickness)
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
                  Text("Finish")
                      .font(.largeTitle)
                      .offset(x: 0, y: 30)
                      .foregroundColor(.blue)
                      
                  NavigationLink(destination: E11())
                  {
                      Text("Finish")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(.blue)
                      .offset(x: 0, y: 700)}
              

              }
              .frame(minWidth: 200, minHeight:200)
              .padding(.trailing)
              Image("environment2")
                  .resizable()
                  .padding()
                  .scaledToFit()
                  .frame(width: 400, height: 400)
                  .offset(x:3, y:-175)
                  .opacity(0.5)
          }
      }
  }
  struct E2_Previews: PreviewProvider {
    static var previews: some View {
      E2()
    }
  }
}
