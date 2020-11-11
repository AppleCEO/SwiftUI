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
            Button("DefaultButtonStyle") {}
                .buttonStyle(DefaultButtonStyle())
            
            Button("BorderlessButtonStyle") {}
                .buttonStyle(BorderlessButtonStyle())
            
            Button("PlainButtonStyle") {}
                .buttonStyle(PlainButtonStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
