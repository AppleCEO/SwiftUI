//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("SwfitUI")
            .font(.title)
            .bold()
            .padding()
        
        Text("SwfitUI")
            .bold()
            .padding()
            .font(.title)
        
        Text("SwiftUI")
            .padding()
//            .bold()  컴파일 오류 - 뷰 프로토콜에는 bold 수식어가 없으므로 오류가 발생합니다.
            .font(.title)
        
        Text("SwiftUI")
            .padding()
            .font(.title)
//            .bold() 컴파일 오류 - 앞과 동일한 이유로, 오류가 발생합니다.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
