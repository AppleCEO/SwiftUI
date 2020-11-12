//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let destination = Text("Destination View")
            .navigationBarBackButtonHidden(true)
        return NavigationView {
            NavigationLink(
                destination: destination) {
                Image("SwiftUI").renderingMode(.original)
            }
            .navigationBarTitle("내비게이션 바 백버튼 히든")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
