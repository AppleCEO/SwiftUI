//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Superview().environmentObject(User())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Superview: View {
    var body: some View { Subview() }
}

struct Subview: View {
    @EnvironmentObject var user: User
    var body: some View { Text(user.name.description) }
}

class User: ObservableObject {
    let name = "User Name"
    @Published var score = 0
}
