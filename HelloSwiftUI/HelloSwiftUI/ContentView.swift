//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { _ in
            Circle().fill(Color.purple)
                .frame(width: 200, height: 200)
                .overlay(Text("Center").font(.title))
        }.background(Color.gray)
        
        GeometryReader { _ in
            Circle().fill(Color.blue)
                .frame(width: 350, height: 350)
            Circle().fill(Color.orange)
                .frame(width: 280, height: 280)
            Circle().fill(Color.purple)
                .frame(width: 200, height: 200)
            Text("TopLeading").font(.title)
        }.background(Color.gray)
    }
    
    let fruits = ["사과", "배", "포도", "바나나"]
    let drinks = ["물", "우유", "탄산수"]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
