//
//  ContentView.swift
//  Shared
//
//  Created by Suruchi Kumari on 4/3/22.
//

import SwiftUI

struct KidsLearningView: View {
    
    private let leaningCurveArray : [LeaningCurve] = [LeaningCurve(name: "Alphabets", image: "alphabets"), LeaningCurve(name: "Birds", image: "birds"), LeaningCurve(name: "Animals", image: "animals"), LeaningCurve(name: "Foods", image: "foods"), LeaningCurve(name: "Emotions", image: "emotions") ]
    
    private var componentsColors : [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
    private var gridItemsLayout = [GridItem(.fixed(200)), GridItem(.adaptive(minimum: 200, maximum: 200))]
    let pathBounds = UIBezierPath.calcBounds(paths: [.logo2])
    @State var easeAmount : CGFloat = 0
    @State var isFilled = false
    @State var scale : Double = 360
 
    var body: some View {
       /* ZStack{
        ShapeView(bezier: .logo2, pathBounds: pathBounds)
                .trim(from: 0, to: easeAmount)
                .stroke(Color(.init(red: 0.56, green: 0.67, blue: 0.12, alpha: 1)), lineWidth: 2)
            
            ShapeView(bezier: .logo2, pathBounds: pathBounds)
                .fill(LinearGradient(gradient: Gradient(colors: [.green, .yellow]), startPoint: .topLeading, endPoint: .bottomTrailing)).opacity(isFilled ? 1 : 0)
        }
            .frame(width: 100, height: 100, alignment: .center)
            .rotation3DEffect(.degrees(scale), axis: (x : 0, y : 1, z : 0))
            .onAppear {
                withAnimation(.easeOut(duration: 2)) {
                    self.easeAmount = 1
                    
                }
                withAnimation(.easeInOut(duration: 1.1).delay(2)) {
                    self.isFilled = true
                }
                withAnimation(.linear(duration: 4).repeatForever(autoreverses: false).delay(4)) {
                    self.scale = 0
                }
            }
            */
            
       
        NavigationView
        {
           // ShapeView(bezier: .logo1, pathBounds: CGRect(x: 50, y: 30, width: 100, height: 100))

            LazyVGrid(columns: gridItemsLayout, spacing: 20) {
                ForEach(leaningCurveArray){ componennt in
                    VStack{
                        NavigationLink(destination: AlphabetsView()) {
                            Image(componennt.image)
                               
                                
                        }
                        Text(componennt.name)

                    }
                    
                }

            }.navigationBarTitle(Text("Kids Learning"))
                .background(
                    LinearGradient(gradient: Gradient(colors: [.green, .purple, .orange]), startPoint: .top, endPoint: .bottom)
                    )
            }
       }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        KidsLearningView()
    }
}
