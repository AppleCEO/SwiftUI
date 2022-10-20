//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            ForEach(0..<10) { _ in
                GeometryReader {
                    Rectangle()
                        .fill(self.color(from: $0))
                }
                .frame(width: 150, height: 150)
            }
        }
    }
    
    func color(from proxy: GeometryProxy) -> Color {
        let yOffset = proxy.frame(in: .global).minY - 44
        let color = min(1, 0.2 + Double(yOffset / 1000))
        return Color(hue: color, saturation: color, brightness: color)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
