//
//  ContentView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 10/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct ContentView1: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Tejasv!")
        }
        .padding()
    }
}

#Preview {
    ContentView1()
}
