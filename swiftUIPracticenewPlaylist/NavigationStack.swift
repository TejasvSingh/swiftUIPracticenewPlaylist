//
//  NavigationStack.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/20/25.
//
import SwiftUI
struct NavigationStackView : View{
    @State var stack : [String] = []
    var body : some View{
        
        NavigationStack{
            NavigationLink("Navigation"){
                Text("Screen2")
            }
            NavigationLink(value: "Tejasv"){
                ZStack{
                    Rectangle().frame(width: 200, height: 50).cornerRadius(10)
                    Text("Navigate").foregroundStyle(.white)
                }
            }.navigationDestination(for: String.self){
                value in
                Text("Screen 2, \(value)")
            }.navigationTitle("Instagram")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Image(systemName: "heart.fill")
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        Image(systemName: "plus")
                    }
                }
        }
            NavigationStack(path: $stack){
                VStack{
                    Text("This is screen 1")
                    Button{
                        stack.append("Tejasv")
                    } label: {
                        Text("Navigate")
                    }
                }.navigationDestination(for: String.self){value in
                        Text("Screen \(value)")
                    }.toolbarTitleMenu{
                        Button{
                            stack.append("2")
                        } label:{
                            Text("Screen 2")
                        }
                    }
                
            }
        
    }
}
#Preview{
    NavigationStackView()
}
