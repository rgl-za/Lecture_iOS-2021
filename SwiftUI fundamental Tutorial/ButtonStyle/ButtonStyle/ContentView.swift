//
//  ContentView.swift
//  ButtonStyle
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            Button(action: {
                print("button clicked")
            }, label: {
                Text("tab")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(action: {
                print("button clicked")
            }, label: {
                Text("long")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
           
            Button(action: {
                print("button clicked")
            }, label: {
                Text("reduction")
                    .fontWeight(.bold)
            }).buttonStyle(Smaller(color: Color.purple))
           
            
            Button(action: {
                print("button clicked")
            }, label: {
                Text("rotate")
                    .fontWeight(.bold)
            }).buttonStyle(RotateButton(color: Color.pink))
            
            Button(action: {
                print("button clicked")
            }, label: {
                Text("blur")
                    .fontWeight(.bold)
            }).buttonStyle(BlurButton(color: Color.black))
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
