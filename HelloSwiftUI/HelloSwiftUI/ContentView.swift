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
            Image(systemName: "person.circle").imageScale(.large)
                .onTapGesture { print("onTapGesture") }
            Button(action: { print("버튼")}) {
                Image(systemName: "person.circle").imageScale(.large)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
