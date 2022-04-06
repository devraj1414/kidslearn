//
//  AlphabetsView.swift
//  KidsLearning
//
//  Created by Suruchi Kumari on 4/3/22.
//

import SwiftUI

struct AlphabetsView: View {
    @State private var img = ImageEnum.img1
    @State private var fadeOut = false
    var body: some View {
        VStack{
            Text("Hellow World")
                   Image(img.rawValue)
                       .id(img.rawValue)
                       .transition(.opacity.animation(.default))
                       .onTapGesture {
                           withAnimation {
                               self.img = self.img.next()
                           }
                       }
               }
    }
}

struct AlphabetsView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetsView()
    }
}



enum ImageEnum: String {
    case img1 = "one"
    case img2 = "two"
    case img3 = "three"

    func next() -> ImageEnum {
        switch self {
            case .img1: return .img2
            case .img2: return .img3
            case .img3: return .img1
        }
    }
}
