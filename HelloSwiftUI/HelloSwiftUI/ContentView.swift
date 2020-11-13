//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Frame Modifier").font(.title).bold().frame(width: 80, height: 30).fixedSize()
            Rectangle().fixedSize()
            Color.red.fixedSize()
            Image("SwiftUI").resizable().fixedSize()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
