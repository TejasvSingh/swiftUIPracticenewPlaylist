//
//  EnvironmentObject.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/14/25.
//
import SwiftUI
import Combine
class UserData : ObservableObject{
    @Published var username = "Tejasv"
}
struct Parent : View{
    @StateObject var userData = UserData()
    var body: some View{
        NavigationStack{
            Text(userData.username)
            NavigationLink("Go to child screen 1", destination: Child1View())
        }.environmentObject(userData)
    }
}

struct Child1View: View{
    var body: some View{
        NavigationLink("Go to child screen 2", destination: Child2View())
    }
}

struct Child2View: View{
    var body: some View{
        NavigationLink("Go to child screen Last", destination: LastView())
    }
}

struct LastView: View{
    @EnvironmentObject var userData : UserData
    var body: some View{
        Text(userData.username)
    }
}
#Preview{
    Parent()
}
