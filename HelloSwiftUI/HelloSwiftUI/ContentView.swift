//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let leadingItem = Button(action: { print("Leading item tapped")}) {
            Image(systemName: "bell").imageScale(.large)
        }
        let trailingItem = Button(action: { print("Trailing")}) {
            Image(systemName: "gear").imageScale(.large)
        }
        return NavigationView {
            Image("SwiftUI")
                .navigationBarItems(leading: leadingItem, trailing: trailingItem)
                .navigationBarTitle("내비게이션 바 아이템")
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
