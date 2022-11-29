//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by joon-ho kil on 2020/10/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0){
                Text("페이워치 EWA 서비스 이용 시 회원님 명의로 자동 발급 되는 가상계좌로, 편리하고 안심할 수 있는 안전한 결제 시스템이에요. EWA 이용 금액 자동 상환을 위한 용도로만 사용됩니다.")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .lineSpacing(5)
                    .padding(16)
            }.background(Color.orange)
                .cornerRadius(4)
                .padding(.horizontal, 24)
            Triangle()
                .fill(Color.orange)
                .frame(width: 18, height: 12)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))

        return path
    }
}


