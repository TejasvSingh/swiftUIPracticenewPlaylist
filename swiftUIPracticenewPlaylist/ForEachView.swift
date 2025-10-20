//
//  ForEachView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/19/25.
//
import SwiftUI
struct fruits: Hashable{
    var name: String
}
struct TypesOfFruits: Identifiable{
    var id = UUID()
    var name: String
}
struct ForEachView: View{
    let Fruit = [
        fruits(name: "Apple"),
        fruits(name: "Bananas"),
        fruits(name: "Oranges"),
        fruits(name: "Mangoes")
    ]
    let FruitTypes = [
        TypesOfFruits(name: "Apple"),
        TypesOfFruits(name: "Bananas"),
        TypesOfFruits(name: "Oranges"),
        TypesOfFruits(name: "Mangoes")
    ]
    let Fruits = ["Apples", "Bananas", "Oranges","Mangoes"]
    var body : some View{
        ForEach(0..<5){ _ in
            Text("hello")
        }
        ForEach(Fruits, id: \.self){ fruit in
            Text(fruit)
        }
        ForEach(Fruit, id: \.self){ fruit in
            Text(fruit.name)
        }
        ForEach(FruitTypes){ fruit in
            Text(fruit.name)
        }
    }
}
#Preview{
    ForEachView()
}
