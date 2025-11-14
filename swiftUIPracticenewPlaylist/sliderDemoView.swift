//
//  sliderDemoView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/14/25.
//
import SwiftUI
struct SlidersDemoView: View{
    @State var age : Double = 18
    var body : some View {
        List{
           Text("Selected Age \(Int(age))")
            Slider(value: $age, in: 18...100){
                Text("Select Age")
            } minimumValueLabel: {
                Text("Min")
            } maximumValueLabel: {
                Text("Max")
            }
        }
    }
    
}
#Preview{
    SlidersDemoView()
}
