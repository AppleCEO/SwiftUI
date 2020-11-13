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
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100, alignment: .leading)
                .border(Color.red)
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100)
                .border(Color.red)
            
            Text("Frame").background(Color.yellow)
                .frame(width: 100, height: 100, alignment: .trailing)
                .border(Color.red)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
