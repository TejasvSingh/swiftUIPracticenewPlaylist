//
//  button.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/17/25.
//
import SwiftUI
struct ButtonView: View{
    var body: some View{
        Button(action: {
            print("Tap Me")
        } ,label:{
            Text("This is a Button ")
        }
        ).buttonStyle(.bordered)
        
        Button(action: {
            print("Tap Me")
        } ,label:{
            Circle()
        }
    )
        Button(action: {
            print("Tap Me")
        } ,label:{
            Text("This is a Button ")
        }
        ).background(Color.orange).clipShape(Capsule())
        
        
    }
}
#Preview{
    ButtonView()
}
