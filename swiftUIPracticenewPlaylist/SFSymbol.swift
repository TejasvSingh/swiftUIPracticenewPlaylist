//
//  SFSymbol.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/17/25.
//
import SwiftUI
struct SFSymbolView : View{
    var body : some View{
        Image(systemName: "xmark").resizable().foregroundColor(.red).aspectRatio( contentMode: .fit).frame(width: 200, height: 200)
    }
}
#Preview{
    SFSymbolView()
}
