//
//  TextEditor.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/14/25.
//
import SwiftUI
struct TextEditorView: View{
    @State var textInput: String = ""
    var body: some View {
        TextEditor(text: $textInput).scrollContentBackground(.hidden).background(.red).frame(height: 200).padding()
        Text("You Entered:")
    }
}
#Preview{
    TextEditorView()
}
