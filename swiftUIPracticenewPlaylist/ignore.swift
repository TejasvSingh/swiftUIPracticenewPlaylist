//
//  ignore.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/14/25.
//
import SwiftUI
struct ignore: View{
    var body : some View{
        Color.red.ignoresSafeArea(edges: .top)
    }
    
    
}
#Preview{
    ignore()
}
