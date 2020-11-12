//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    let fruits = ["사과", "배", "포도", "바나나"]
    let drinks = ["물", "우유", "탄산수"]
    var body: some View {
        List {
            Text("Fruits").font(.largeTitle)
            ForEach(fruits, id: \.self) {
                Text($0)
            }
            
            Text("Drinks").font(.largeTitle)
            ForEach(drinks, id: \.self) {
                Text($0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
