//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Vertical ScrollView").font(.largeTitle)
                ScrollView {
                    ForEach(0..<10) { i in
                        Circle()
                            .fill(Color(white: 0.2 + (0.8 * Double(i) / 10)))
                            .frame(width: 80, height: 80)
                    }
                    .frame(width: geometry.size.width / 2)
                }
                .frame(height: geometry.size.height / 2)
                .padding(.bottom)
                
                Text("Horizontal ScrollView").font(.largeTitle)
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(0..<10) { i in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.yellow)
                                .frame(width: 100, height: 100)
                                .scaleEffect(1 - (0.7 * CGFloat(i) / 10))
                        }
                    }
                    .frame(height: geometry.size.height / 5)
                    .padding(.horizontal)
                }
            }
        }
        
    }
}

struct PresentedView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        Button(action: {
            if self.presentationMode.wrappedValue.isPresented {
                self.presentationMode.wrappedValue.dismiss()
            }
        }) {
            Text("Tap to Dismiss")
                .font(.title).foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
