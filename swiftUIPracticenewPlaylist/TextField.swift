//
//  TextField.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/14/25.
//
import SwiftUI
struct TextFieldView: View{
    @State var textInput : String = ""
    var body: some View{
        TextField("Enter Text", text: $textInput, onEditingChanged: {
            _ in
            print("Edited")
        }).textFieldStyle(.roundedBorder).padding()
        
        Button("Done"){
        }
    }
}
#Preview{
    TextFieldView()
}
