//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle().fill(Color.green).frame(width: 150, height: 150)
            .overlay(
                Rectangle().fill(Color.yellow)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
