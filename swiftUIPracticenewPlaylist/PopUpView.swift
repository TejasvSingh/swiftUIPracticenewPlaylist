//
//  PopUpView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/20/25.
//

import SwiftUI
struct PopUpView : View{
    @State var ispopUp = false
    var body : some View{
        Button("Click here"){
            ispopUp.toggle()
        }.sheet(isPresented: $ispopUp, content:{ PopSheetView()})
        Button("Click here for Pop Over"){
            ispopUp.toggle()
        }.popover(isPresented: $ispopUp, content:{ PopSheetView()})
    }
}

struct PopSheetView : View{
    var body : some View {
        Text("This is some View")
    }
}
#Preview{
    PopUpView()
}
