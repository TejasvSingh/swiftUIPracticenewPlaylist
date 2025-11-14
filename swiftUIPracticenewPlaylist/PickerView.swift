//
//  PickerView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/9/25.
//
import SwiftUI
enum Fruits: String, CaseIterable{
    case mango, banana, apple, pineapple, orange, grapes
}
struct PickerView: View{
    @State var selectedFruit : Fruits = .mango
    var body: some View{
        List{
            Picker("Pick your favourite fruit", selection: $selectedFruit){
                ForEach(Fruits.allCases, id: \.self){fruit in
                    Text(fruit.rawValue)
                }
            }.pickerStyle(.navigationLink)
        }
    }
}
#Preview{
    PickerView()
}
