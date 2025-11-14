//
//  SteppersView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/14/25.
//
import SwiftUI
struct SteppersView : View {
    @State var quantity = 0
    @State var quantity1 = 0
    var body : some View{
        List{
            Stepper("Increased to \(quantity)", value: $quantity)
            Stepper("Increased to \(quantity1)"){
                quantity1 += 2
            } onDecrement: {
                quantity1 -= 2
            }
        }
    }
}
#Preview{
    SteppersView()
}
