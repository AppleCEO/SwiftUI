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
            Button("Button") {
                print("Button1")
            }
            Button(action: { print("Button2")}) {
                Text("Button")
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
            }
            Button(action: { print("Button3")}) {
                Circle()
                    .stroke(lineWidth: 2)
                    .frame(width: 80, height: 80)
                    .overlay(Text("Button"))
            }
            .accentColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
