//
//  ObservAndStateObject.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/14/25.
//
import SwiftUI
import Combine
class ViewModel : ObservableObject{
    
   @Published var heroNames : [String] = []
    init(){
        getAllHeroNames()
    }
    func getAllHeroNames(){
        heroNames.append("Thor")
        heroNames.append("IronMan")
    }
    func addNewName(_ name : String){
        heroNames.append(name)
        print(heroNames)
    }
}
struct ObserveAndStateObject: View{
   @ObservedObject var viewModel = ViewModel()
    
    var body: some View{
        NavigationStack{
            List(viewModel.heroNames,id: \.self){hero in
                Text(hero)
            }.navigationTitle("Marvel Heros").toolbar(content:{
                Button{
                    viewModel.addNewName("Captain America")
                } label: {
                    Image(systemName: "plus")
                }
            })
        }
    }
}
#Preview{
    ObserveAndStateObject()
}
