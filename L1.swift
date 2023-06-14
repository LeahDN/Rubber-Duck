//
// ContentView.swift
// our app
//
// Created by Scholar on 6/12/23.
//
import SwiftUI
struct Line6 {
  var points = [CGPoint]()
  var color: Color = .red
  var lineWidth: Double = 12
}
struct L1: View {
  @State private var currentLine = Line6()
  @State private var lines: [Line6] = []
  @State private var selectedColor: Color = .red
  @State private var thickness: Double = 0.0
  var body: some View {
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
                self.currentLine = Line6 (points: [], color: selectedColor, lineWidth: thickness)
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
      Image("Place")
        .resizable()
        .padding()
        .scaledToFit()
        .frame(width: 400, height: 400)
        .offset(x:3, y:-175)
        .opacity(0.5)
    }
  }
  struct L1_Previews: PreviewProvider {
    static var previews: some View {
      L1()
    }
  }
}
