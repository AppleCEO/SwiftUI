//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 100) {
            Group {
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.")
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: true, vertical: false)
                
                Text("FixedSize를 적용하면 글자가 생략되지 않습니다.").font(.title)
                    .fixedSize(horizontal: false, vertical: true)
            }.font(.title)
            .frame(width: 150, height: 40)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
