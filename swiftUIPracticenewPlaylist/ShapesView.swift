//
//  ShapesView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/13/25.
//
import SwiftUI
struct ShapeView: View{
    var body : some View{
        Rectangle().foregroundColor(.red).frame(width: 300, height: 200).overlay(content:{
            Rectangle().stroke(style: StrokeStyle(lineWidth: 5))
        })
        Capsule().foregroundColor(.red).frame(width: 300, height: 200).overlay(content:{
            Rectangle().stroke(style: StrokeStyle(lineWidth: 5))
        })
        Circle().foregroundColor(.red).frame(width: 300, height: 200).overlay(content:{
            Rectangle().stroke(style: StrokeStyle(lineWidth: 5))
        })
        RoundedRectangle(cornerRadius: 10).foregroundColor(.red).frame(width: 300, height: 200).overlay(content:{
            Rectangle().stroke(style: StrokeStyle(lineWidth: 5))
        })
        Ellipse().foregroundColor(.red).frame(width: 300, height: 200).overlay(content:{
            Rectangle().stroke(style: StrokeStyle(lineWidth: 5))
        })
    }
}
#Preview{
    ShapeView()
}
