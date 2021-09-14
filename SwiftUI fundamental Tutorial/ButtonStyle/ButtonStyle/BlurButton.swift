//
//  BlurButton.swift
//  ButtonStyle
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

struct BlurButton : ButtonStyle{
    
    var color : Color
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack{
            configuration.label
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .background(color)
                .cornerRadius(20)
                .blur(radius: configuration.isPressed ? 10 : 0)
                
        }
    }
}

struct BlurButton_PreViews: PreviewProvider{
    
    static var previews: some View{
        
        Button(action: {
            print("clicked")
        }, label: {
            Text("test")
        }).buttonStyle(BlurButton(color: Color.blue))
    }
}
