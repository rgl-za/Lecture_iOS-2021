//
//  MyZstack.swift
//  Stack_tutorial
//
//  Created by 지현정 on 2021/07/23.
//

import SwiftUI

struct MyZstack : View{
    var body : some View{
        
        ZStack{
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.yellow)
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
//                .offset(y:-100)
                .padding(-100)
            
            Rectangle()
                .frame(width: 150, height:150)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .zIndex(0.0)
        }
    }
}

struct MyZstack_Previews : PreviewProvider{
    static var previews: some View{
        MyZstack()
    }
}
