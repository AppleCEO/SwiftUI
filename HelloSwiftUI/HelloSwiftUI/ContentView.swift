//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: { self.showingAlert = true }) {
            Text("alert")
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("제목"),
                message: Text("내용"),
                primaryButton: .default(Text("확인"), action: { print("확인") }),
                secondaryButton: .cancel(Text("취소"))
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
