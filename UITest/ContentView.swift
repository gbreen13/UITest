//
//  ContentView.swift
//  UITest
//
//  Created by George Breen on 6/17/20.
//  Copyright © 2020 George Breen. All rights reserved.
//

import SwiftUI
import Lottie

struct ContentView: View {
    var body: some View {
 
        List {
            LottieView(filename: "spiningsquare",lm: .loop).frame(width:360, height: 360)
            LottieView(filename: "Watermelon",lm: .loop).frame(width:360, height: 360)
            LottieView(filename: "mouse",lm: .loop).frame(width:360, height: 360)
            LottieView(filename: "HamburgerArrow",lm: .loop).frame(width:360, height: 360)
            LottieView(filename: "IconTransitions",lm: .loop)
            LottieView(filename: "Keypath",lm: .loop)
            LottieView(filename: "LottieLego1",lm: .loop)
            LottieView(filename: "MotoinCorpse-Jrcanest",lm: .loop)
            LottieView(filename: "Switch",lm: .loop)
            LottieView(filename: "TwitterHeart",lm: .loop)
        }
    
    .cornerRadius(30)
    //.shadow(radius:30)
    }
}

struct LottieView: UIViewRepresentable  {
    let animationView = AnimationView()
    var filename = "LottieLogo2"
    var lm: LottieLoopMode = .playOnce
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView()
        let animation = Animation.named(filename)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play(fromProgress: 0,
        toProgress: 1,
        loopMode: lm,
        completion: nil)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

