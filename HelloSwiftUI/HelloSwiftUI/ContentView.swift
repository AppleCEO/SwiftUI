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
            Image(systemName: "speaker.3").font(.body)
            Image(systemName: "speaker.3").font(.title)
            Image(systemName: "speaker.3").font(.system(size: 40))
            Image(systemName: "speaker.3").imageScale(.large)
                .font(.system(size: 40))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
