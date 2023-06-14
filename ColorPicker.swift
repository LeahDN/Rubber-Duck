//
// ColorPicker.swift
// our app
//
// Created by Scholar on 6/13/23.
//
import SwiftUI
struct ColorPickerView: View{
  let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple, Color.yellow, Color.white]
  @Binding var selectedColor: Color
  var body: some View{
    HStack{
      ForEach(colors, id: \.self) {
        color in
        Image(systemName: selectedColor == color ? Constants.Icons.recordCircleFill
           : Constants.Icons.circleFill)
        .foregroundColor(color)
        .font(.system(size: 16))
        .clipShape(Circle())
        .onTapGesture {
          selectedColor = color
        }
      }
    }
  }
}
struct ColorListView_Previews: PreviewProvider {
  static var previews: some View {
    ColorPickerView(selectedColor: .constant(.blue))
  }
}







