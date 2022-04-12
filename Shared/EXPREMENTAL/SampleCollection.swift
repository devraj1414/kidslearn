//
//  SampleCollection.swift
//  KidsLearning (iOS)
//
//  Created by Suruchi Kumari on 4/12/22.
//

import SwiftUI
import ASCollectionView_SwiftUI
struct SampleCollection: View {
    @State var dataExample = (0 ..< 30).map { $0 }
    var body: some View {
        ASCollectionView(data: dataExample, dataID: \.self)
               { item, _ in
                   Color.blue
                       .overlay(Text("\(item)"))
               }
               .layout
               {
                   .grid(
                       layoutMode: .adaptive(withMinItemSize: 100),
                       itemSpacing: 5,
                       lineSpacing: 5,
                       itemSize: .absolute(50))
               }
    }
}

struct SampleCollection_Previews: PreviewProvider {
    static var previews: some View {
        SampleCollection()
    }
}
