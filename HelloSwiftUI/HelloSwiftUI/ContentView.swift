//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Image("SwiftUI")
            Image("SwiftUI").frame(width: 50, height: 50)
            Image("SwiftUI").frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
