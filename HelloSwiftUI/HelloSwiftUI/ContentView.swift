//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let titles = ["Fruits", "Drinks"]
        let data = [fruits, drinks]
        
        return List {
            ForEach(data.indices) { index in
                Section(
                    header: Text(titles[index]).font(.title),
                    footer: HStack { Spacer(); Text("\(data[index].count)건")}
                ) {
                    ForEach(data[index], id: \.self) {
                        Text($0)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
    
    let fruits = ["사과", "배", "포도", "바나나"]
    let drinks = ["물", "우유", "탄산수"]
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
