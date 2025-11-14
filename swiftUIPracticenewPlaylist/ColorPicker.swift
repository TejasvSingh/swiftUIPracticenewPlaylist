//
//  ColorPicker.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/9/25.
//
import SwiftUI
struct ColorPickerView: View{
    @State var selectedColor: Color = Color.indigo
    var body: some View{
        List{
            ColorPicker("Select color", selection: $selectedColor)
        }
    }
}
#Preview{
    ColorPickerView()
}
