//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var user: User = User()
    
    var body: some View {
        VStack(spacing: 30) {
            Text(user.name)
            
            Button(action: { self.user.score += 1 }) {
                Text(user.score.description)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class User: ObservableObject {
    let name = "User Name"
    @Published var score = 0
}
