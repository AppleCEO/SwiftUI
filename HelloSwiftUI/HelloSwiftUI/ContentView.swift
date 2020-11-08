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
            Text("HStack").font(.title).foregroundColor(.blue)
            Text("은 뷰를 가로로 배열합니다.")
            Text("!")
        }
        .padding()
        .border(Color.black)
        .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
