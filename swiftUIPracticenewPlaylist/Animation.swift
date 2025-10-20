//
//  Animation.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/20/25.
//
import SwiftUI
struct AnimationsView: View{
    @State var isAnimation = false
    var body: some View {
        Rectangle().frame(width:200, height: 200).cornerRadius(isAnimation ? 100: 0).rotationEffect(isAnimation ?  .degrees(360): .degrees(0)).onTapGesture{
            withAnimation(.easeInOut(duration: 1.0)){
                isAnimation.toggle()
            }
        }
    }
}
#Preview{
    AnimationsView()
}
