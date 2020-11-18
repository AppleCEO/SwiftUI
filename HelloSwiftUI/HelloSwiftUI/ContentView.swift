//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button(action: { self.showingSheet.toggle() }) {
            Text("Present")
                .font(.title).foregroundColor(.blue)
        }
        .sheet(isPresented: $showingSheet, onDismiss: { print("Dismissed")},
               content: { PresentedView() })
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
