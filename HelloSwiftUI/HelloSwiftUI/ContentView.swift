//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showingActionSheet = false
    
    var body: some View {
        Button(action: { self.showingActionSheet = true }) {
            Text("ActionSheet")
        }
        .actionSheet(isPresented: $showingActionSheet) {
            ActionSheet(title: Text("제목"),
                        message: Text("내용"),
                        buttons: [
                            .default(Text("버튼1")),
                            .default(Text("버튼2")),
                            .destructive(Text("버튼3")),
                            .cancel(Text("취소")),
                        ]
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
