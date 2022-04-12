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
    @State private var isPresentedSheet = false
    @State private var item = ""
       
    init() {
        //Use this if NavigationBarTitle is with Large Font
                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

                //Use this if NavigationBarTitle is with displayMode = .inline
                UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]

       }
    var body: some View {
               
        NavigationView{
            ZStack{
                AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .green, .blue, .black, .green]), center: .center).edgesIgnoringSafeArea(.all)
                
                LazyVGrid(columns: gridItemsLayout, spacing: 20) {
                    ForEach(leaningCurveArray){component in
                        VStack{
                            Button(component.name){
                                item = component.name
                                isPresentedSheet.toggle()
                            }
                          
                            
                            
//                            Text(component.name)
//                            if component.name == "Foods"{
////                                NavigationLink(destination: ExpView()) {
////                                    Image(component.image)
////                                }
//                            }else{
//                                NavigationLink(destination: AlphabetsView()) {
//
//                                    Image(component.image)
//                                }
//                            }
                           
                        }
                        
                    }
                }
                .sheet(isPresented : $isPresentedSheet){
                    if item == "Foods"{
                        ExpView()
                    }else if item == "Animals"{
                        AnimView()
                    }else if item == "Animals"{
                        SampleCollection()
                    }else{
                        AlphabetsView()
                    }
                }
            }.navigationBarTitle(Text("Kids Learning"))
        }
    }
}
    
//    private let leaningCurveArray : [LeaningCurve] = [LeaningCurve(name: "Alphabets", image: "alphabets"), LeaningCurve(name: "Birds", image: "birds"), LeaningCurve(name: "Animals", image: "animals"), LeaningCurve(name: "Foods", image: "foods"), LeaningCurve(name: "Emotions", image: "emotions") ]
//
//    private var componentsColors : [Color] = [.red, .blue, .green, .yellow, .orange, .purple]
//    private var gridItemsLayout = [GridItem(.fixed(200)), GridItem(.adaptive(minimum: 200, maximum: 200))]
//    let pathBounds = UIBezierPath.calcBounds(paths: [.logo2])
//    @State var easeAmount : CGFloat = 0
//    @State var isFilled = false
//    @State var scale : Double = 360
//
//    let screenBounds = UIScreen.main.bounds
//    init() {
//        //Use this if NavigationBarTitle is with Large Font
//                UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//
//                //Use this if NavigationBarTitle is with displayMode = .inline
//                UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//
//       }

//    var body: some View {
//
//            Text("Apple")
        
//        NavigationView
//        {
//           // ShapeView(bezier: .logo1, pathBounds: CGRect(x: 50, y: 30, width: 100, height: 100))
//
//            ZStack {
//                Color.red.edgesIgnoringSafeArea(.all)
//                AngularGradient(gradient: Gradient(colors: [.green, .blue, .black, .green, .blue, .black, .green]), center: .center).edgesIgnoringSafeArea(.all)
//                LazyVGrid(columns: gridItemsLayout, spacing: 20) {
//                    ForEach(leaningCurveArray){ componennt in
//                        VStack{
//
//                            NavigationLink(destination: AlphabetsView()) {
//                                Image(componennt.image)
//
//
//                            }
//                            if(componennt.name == "Alphabets"){
//                                NavigationLink(destination: ExpView()) {
//                                    Image(componennt.image)
//
//
//                                }
//                            }
//                            Text(componennt.name)
//
//                        }
//
//                    }
//
//                }.navigationBarTitle(Text("Kids Learning")).navigationBarHidden(false).foregroundColor(.white)
//
//
//                }
//        }
   // }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        KidsLearningView()
    }
}
