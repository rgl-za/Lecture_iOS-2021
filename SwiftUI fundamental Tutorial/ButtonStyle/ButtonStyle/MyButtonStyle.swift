//
//  MyButtonStyle.swift
//  ButtonStyle
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

enum ButtonType{
    case tab
    case long
}

struct MyButtonStyle : ButtonStyle{
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack{
            configuration.label
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .background(color)
                .cornerRadius(20)
                .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
                .onTapGesture {
                    if (self.type == .tab){
                        let haptic = UIImpactFeedbackGenerator(style: .light)
                        haptic.impactOccurred()
                    }
                }.onLongPressGesture {
                    if (self.type == .long){
                        let haptic = UIImpactFeedbackGenerator(style: .heavy)
                        haptic.impactOccurred()
                    }
                }
                
        }
    }
    
}

struct MyButtonStyle_PreViews: PreviewProvider{
    
    static var previews: some View{
        
        Button(action: {
            print("clicked")
        }, label: {
            Text("test")
        }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
    }
}
