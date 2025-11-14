//
//  Toggle.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/27/25.
//
import SwiftUI
struct toggleView: View{
    @State var isOn = false
    var body : some View{
        Toggle("WiFi", isOn: $isOn).padding().tint(.blue).labelsHidden().onChange(of: isOn){
            oldValue, newValue in
            print(oldValue, newValue)
        }
    }
}
#Preview{
    toggleView()
}
