//
//  ContentView.swift
//  animeApp
//
//  Created by 米倉謙 on 2020/09/07.
//  Copyright © 2020 kenyonekura.com. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var trigger = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation{
                    self.trigger.toggle()
                }
            }) {
                Text("昇-龍-拳")
                    .font(.system(size: 50, weight: .black, design: .default))
                    .foregroundColor(Color.black)
                
            }
            Spacer().frame(height: 50)
            if trigger {
                startAnimation()
            }
        }.font(.title)
}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

var images : [UIImage]! = [UIImage(named: "attak1")!, UIImage(named: "attak2")!, UIImage(named: "attak3")!, UIImage(named: "attak4")!, UIImage(named: "attak5")!, UIImage(named: "attak6")!, UIImage(named: "attak7")!, UIImage(named: "attak8")!, UIImage(named: "attak9")!, UIImage(named: "attak10")!, UIImage(named: "attak11")!, UIImage(named: "attak12")!, UIImage(named: "attak13")!, UIImage(named: "attak14")!, UIImage(named: "attak15")!, UIImage(named: "attak16")!, UIImage(named: "attak17")!, UIImage(named: "attak18")!, UIImage(named: "attak19")!, UIImage(named: "attak20")!]
let animationImage = UIImage.animatedImage(with: images, duration: 1.0)

struct startAnimation: UIViewRepresentable {
    
    func makeUIView(context: Self.Context) -> UIView {
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        let myImage = UIImageView(frame: CGRect(x: 20, y: 100, width: 360, height: 300))
        myImage.contentMode = UIView.ContentMode.scaleAspectFill
        myImage.image = animationImage
        myView.addSubview(myImage)
        
        return myView
}

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<startAnimation>)  {
        print("updated!")
        
}
}

