//
//  Image.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/13/25.
//
import SwiftUI
struct ImageView : View{
    var body: some View{
        //Image(systemName: "xmark.circle")
        Image("rock").resizable().scaledToFill().frame( width: 250, height: 250).cornerRadius(125)
        Image("rock").resizable().scaledToFill().frame( width: 250, height: 250).clipShape(Circle())
    }
}
#Preview{
    ImageView()
}
