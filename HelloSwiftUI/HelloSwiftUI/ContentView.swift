//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Circle()
            .fill(Color.yellow.opacity(0.8))
            .frame(width: 250, height: 250)
            .overlay(Text("Joystick").font(.largeTitle))
            .overlay(Image(systemName: "arrow.up").font(.title).padding(), alignment: .top)
            .overlay(Image(systemName: "arrow.left").font(.title).padding(), alignment: .leading)
            .overlay(Image(systemName: "arrow.up.right.circle.fill").font(.title), alignment: .topTrailing)
            .background(Image(systemName: "arrow.down").font(.title).padding(), alignment: .bottom)
            .background(Image(systemName: "arrow.right").font(.title).padding(), alignment: .trailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
