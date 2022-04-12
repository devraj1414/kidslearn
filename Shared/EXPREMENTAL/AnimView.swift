//
//  AnimView.swift
//  KidsLearning (iOS)
//
//  Created by Suruchi Kumari on 4/11/22.
//

import SwiftUI

struct AnimView: View {
    @State private var show = false
    @State var showText = false
    var body: some View {
        VStack {
                    if (self.showText) {
                        Image("animals").transition( AnyTransition.move(edge: .leading).combined(with: AnyTransition.opacity).combined(with: .scale) )

                    }
                    Button(action: {
                        withAnimation(.easeIn(duration: 4.0)) {
                            self.showText.toggle()
                        }
                    }) {
                        Text("Change me")
                    }
                }
    }
}

struct LabelView: View {
    var body: some View {
        Text("Hi there!")
            .padding(10)
            .font(.title)
            .foregroundColor(.white)
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.green).shadow(color: .gray, radius: 3))
    }
}

struct AnimView_Previews: PreviewProvider {
    static var previews: some View {
        AnimView()
    }
}
