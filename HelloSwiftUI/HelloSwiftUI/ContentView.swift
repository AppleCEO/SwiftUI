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
            Text("Spacer MinLength").font(.title).foregroundColor(.white)
            Spacer(minLength: 100)
            Text("Spacer").font(.title).background(Color.yellow)
        }.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
