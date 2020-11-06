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
            Image(systemName: "book.fill").imageScale(.small)
                .foregroundColor(.red)
            Image(systemName: "book.fill").imageScale(.medium)
                .foregroundColor(.green)
            Image(systemName: "book.fill").imageScale(.large)
                .foregroundColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
