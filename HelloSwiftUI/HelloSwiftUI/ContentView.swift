//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("SwiftUI")
                .resizable(capInsets: .init(top: 0, leading: 50, bottom: 0, trailing: 0), resizingMode: .tile)
                .frame(width: 150, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
