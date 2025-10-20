//
//  ColorsAndGradients.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/17/25.
//
import SwiftUI
struct ColorsAndGradients : View{
    var body: some View{
        ScrollView{
            Rectangle().foregroundColor(Color.primary).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.secondary).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.init(red: 0, green: 56/451, blue: 45/1456)).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color("ExampleSecondary")).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.clear).background(LinearGradient(colors: [.red,.green, .orange], startPoint: .leading, endPoint: .trailing)).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.clear).background(AngularGradient(colors:[.red,. blue], center: .center, startAngle: .degrees(90), endAngle: .degrees(360))).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.clear).background(RadialGradient(colors:[.red,. blue], center: .leading, startRadius: 5, endRadius: 25)).frame(width: 200, height: 200)
            Rectangle().foregroundColor(Color.clear).background(LinearGradient(stops: [.init(color: .red, location: 0), .init(color: .green, location: 0.5)], startPoint: .leading, endPoint: .trailing)).frame(width: 200, height: 200)
        }
    }
}
#Preview{
    ColorsAndGradients()
}
