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
            Rectangle().fill(Color.red).frame(minWidth: 100)
            Rectangle().fill(Color.orange).frame(maxWidth: 15)
            
            Rectangle().fill(Color.yellow).frame(height: 150)
            Rectangle().fill(Color.green).frame(maxHeight: .infinity)
            
            Rectangle().fill(Color.blue)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            Rectangle().fill(Color.purple)
            
        }.frame(width: 300, height: 150)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
