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
            Image("SwiftUI").resizable()
                .aspectRatio(CGSize(width: 1.6, height: 1), contentMode: .fit)
                .frame(width:150, height:150)
            
            Image("SwiftUI").resizable()
                .aspectRatio(0.7, contentMode: .fill)
                .frame(width:150, height:150)
                .clipped()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
