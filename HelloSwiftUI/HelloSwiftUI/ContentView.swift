//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    enum TabItems { case A, B }
    @State private var selected = TabItems.A
    
    var body: some View {
        TabView(selection: $selected) {
            Text("A 뷰")
                .tag(TabItems.A)
                .tabItem { Image(systemName: "a.circle").imageScale(.large)}
            
            Text("B 뷰")
                .tag(TabItems.B)
                .tabItem { Image(systemName: "b.circle").imageScale(.large)}
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
