//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(alignment: .center) {
            Rectangle().fill(Color.green).frame(width: 150, height: 150, alignment: .bottom)
            Rectangle().fill(Color.yellow).frame(width: 150, height: 550)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
