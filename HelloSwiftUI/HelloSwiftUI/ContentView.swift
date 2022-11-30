//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
  @State private var scrollOffset: CGFloat = .zero

  var body: some View {
    ZStack {
      scrollView
      statusBarView
    }
  }

  var scrollView: some View {
    ScrollViewOffset {
      LazyVStack {
        ForEach(0..<100) { index in
          Text("\(index)")
        }
      }
    } onOffsetChange: { offset in
        print("New ScrollView offset: \(offset)")
      }
  }

  var statusBarView: some View {
    GeometryReader { geometry in
      Color.red
        .opacity(opacity)
        .frame(height: geometry.safeAreaInsets.top, alignment: .top)
        .edgesIgnoringSafeArea(.top)
    }
  }

  var opacity: Double {
    switch scrollOffset {
    case -100...0:
      return Double(-scrollOffset) / 100.0
    case ...(-100):
      return 1
    default:
      return 0
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ScrollViewOffset<Content: View>: View {
  let content: () -> Content
    let onOffsetChange: (CGFloat) -> Void

    init(
        @ViewBuilder content: @escaping () -> Content,
        onOffsetChange: @escaping (CGFloat) -> Void
      ) {
        self.content = content
        self.onOffsetChange = onOffsetChange
      }

  var body: some View {
    ScrollView {
      offsetReader
      content()
        .padding(.top, -8) // 👈🏻 places the real content as if our `offsetReader` was not there.
    }
    .coordinateSpace(name: "frameLayer")
        .onPreferenceChange(OffsetPreferenceKey.self, perform: onOffsetChange)
  }

  var offsetReader: some View {
    GeometryReader { proxy in
      Color.clear
        .preference(
          key: OffsetPreferenceKey.self,
          value: proxy.frame(in: .named("frameLayer")).minY
        )
    }
    .frame(height: 0) // 👈🏻 make sure that the reader doesn't affect the content height
  }
}

private struct OffsetPreferenceKey: PreferenceKey {
  static var defaultValue: CGFloat = .zero
  static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {}
}
