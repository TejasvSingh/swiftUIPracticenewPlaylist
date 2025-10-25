//
//  AlertView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/25/25.
//
import SwiftUI
struct AlertView : View{
    @State var isPresented : Bool = false
    @State var inputText : String = ""
    var body : some View{
        Button("Alert Button"){
            isPresented.toggle()
        }.background(Color.red).alert("This is Title", isPresented: $isPresented){
        }.padding()
        
        Button("Alert Button"){
            isPresented.toggle()
        }.background(Color.black).alert("This is Title", isPresented: $isPresented, actions: {}, message: {
            Text("This is Alert Message")
        }).padding()
        
        Button("Alert Button"){
            isPresented.toggle()
        }.background(Color.red).alert("This is Title", isPresented: $isPresented, actions: {
            TextField("Input here", text: $inputText)
            Button("Submit"){
                print("Submit button tapped")
            }
        }, message: {
            Text("This is Alert Message")
        })
    }
}
#Preview{
    AlertView()
}
