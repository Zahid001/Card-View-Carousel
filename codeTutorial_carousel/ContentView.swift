//
//  ContentView.swift
//  codeTutorial_carousel
//
//  Created by Christopher Guirguis on 3/17/20.
//  Copyright © 2020 Christopher Guirguis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var textfield_val = ""
    @State var heartFilled = false
    
    var body: some View {
        ZStack{
            VStack{
                Spacer().frame(height:30)
                Text("INFINITE CAROUSEL").font(.system(size: 50, weight: .semibold)).multilineTextAlignment(.center)
                Spacer()
            }
            CarouselView(itemHeight: 400, views: [
            AnyView(
                VStack{
                    Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                    Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                    Circle().frame(width: 50, height: 50).foregroundColor(.red).padding()
                
            }),
            AnyView(Text("view number 2")),
            AnyView(TextField("placeholder", text: $textfield_val).padding().multilineTextAlignment(.center)),
            AnyView(Text("the textfield said '\(textfield_val == "" ? "..." : textfield_val)'")),
            AnyView(
                ZStack{
                    if heartFilled {
                        Image(systemName:"heart")
                    } else {
                        Image(systemName:"heart.fill")
                    }
                }
            ),
            AnyView(
                Button(action: {self.heartFilled.toggle()})
                {Text("Fill the heart")}
            ),
            AnyView(Text("last view")),
        ])
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
