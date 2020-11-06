//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 30) {
            Image("SwiftUI").resizable().frame(width: 100, height: 150)
            
            Image("SwiftUI").scaledToFit().frame(width: 100, height: 150)
            
            Image("SwiftUI").resizable()
                .scaledToFill()
                .frame(width: 100, height: 150)
                .clipped()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
