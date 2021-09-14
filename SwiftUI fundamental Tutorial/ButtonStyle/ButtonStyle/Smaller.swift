//
//  Smaller.swift
//  ButtonStyle
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

struct Smaller : ButtonStyle{
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack{
            configuration.label
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .background(color)
                .cornerRadius(20)
                .scaleEffect(configuration.isPressed ? 0.8 : 1.0)
                .opacity(configuration.isPressed ? 0.5 : 1.0)
                
        }
    }
}

struct Smaller_PreViews: PreviewProvider{
    
    static var previews: some View{
        
        Button(action: {
            print("clicked")
        }, label: {
            Text("test")
        }).buttonStyle(Smaller(color: Color.blue))
    }
}


