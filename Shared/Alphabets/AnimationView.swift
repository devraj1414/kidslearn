//
//  AnimationView.swift
//  KidsLearning
//
//  Created by Suruchi Kumari on 4/3/22.
//

import SwiftUI

struct AnimationView: View {
    let images = ["one", "two", "three", "one", "two", "three", "one"] // Array of image names to showcase
       
       @State var activeImageIndex = 0 // Index of the currently displayed image
       @State var isExpanded = false
       
    @State var imageSwitchTimer = Timer.publish(every: 4, on: .main, in: .common).autoconnect()
    var transition: AnyTransition {
        switch activeImageIndex {
        case 0:
            return .asymmetric(insertion: .slide, removal: .opacity)
        default:
            return .identity
        }
    }
    var body: some View {
        VStack{
            Image(images[activeImageIndex])
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .transition(transition) // use here
               // .animation(.easeOut(duration: 5))
                //.animation(.easeOut(duration: 2).delay(2))
                .onReceive(imageSwitchTimer) { _ in
                    self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
                }
            
            HStack{
                Spacer()
                Button {
                self.activeImageIndex = (self.activeImageIndex + 1) % self.images.count
                    self.stopTimer()
                    self.startTimer()
                    
            } label: {
                Text("NEXT")
                
            }
            Spacer()
            Button {
                self.activeImageIndex = (self.activeImageIndex - 1) % self.images.count
                self.stopTimer()
                self.startTimer()
            } label: {
                Text("PREVIOUS")
            }
                Spacer()
                
            }

        }
    }
    func stopTimer() {
        self.imageSwitchTimer.upstream.connect().cancel()
       }
       
       func startTimer() {
           self.imageSwitchTimer =  Timer.publish(every: 4, on: .main, in: .common).autoconnect()
       }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
