//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "arrow.up").font(Font.title.weight(.black))
            Image(systemName: "arrow.left").font(Font.title.weight(.semibold))
            Image(systemName: "arrow.down").font(Font.title.weight(.light))
            Image(systemName: "arrow.right").font(Font.title.weight(.ultraLight))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
