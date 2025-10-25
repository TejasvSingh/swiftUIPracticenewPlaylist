//
//  Lists.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/25/25.
//

import SwiftUI
struct marvelCharacter: Identifiable{
    var id = UUID()
    let name : String
    let imageName : String
}
struct ListView : View{
    let marvelCharacters = ["SpiderMan","Hulk", "IronMan", "Thor"]
    let marvels : [marvelCharacter] = [.init(name : "SpiderMan", imageName:"1.SpiderMan"), .init(name : "Hulk", imageName:"2.Hulk")]
    var body: some View{
        List{
            Section("Section 1"){
                Text("Hello")
            }
            Section("Section 2"){
                ForEach(0..<10){ value in
                    Text("\(value)")
                }
            }
            
        }
        List(marvelCharacters, id: \.self){ characters in
            Text(characters)
        }
        List(marvels){ characters in
            MarvelView(character : characters)
        }
    }
}

struct MarvelView : View{
    let character : marvelCharacter
    var body : some View{
        VStack{
        Text(character.name)
        Text(character.imageName)
    }
    }
}
#Preview{
    ListView()
}
