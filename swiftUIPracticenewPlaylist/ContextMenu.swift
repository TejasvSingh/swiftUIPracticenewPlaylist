//
//  ContextMenu.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/25/25.
//
import SwiftUI
struct ContextMenuView : View{
    var body : some View{
        Text("Sample").contextMenu(menuItems: {
            Button("Sample Button"){
                print("Button Tapped")
            }
            Button(role: .destructive, action:{
            }, label:{
                HStack{
                    Text("Delete")
                    Image(systemName: "trash")
                }
            }
            )
            })
        }
    }

#Preview{
    ContextMenuView()
}
