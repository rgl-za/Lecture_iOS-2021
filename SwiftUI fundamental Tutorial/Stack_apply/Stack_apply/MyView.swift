//
//  MyView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/31.
//

import SwiftUI

struct MyView: View{
    
    var title: String
    
    var bgColor: Color
    
    var body: some View{
        
        ZStack{
            
            bgColor
//                .edgesIgnoringSafeArea(.all)
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }.animation(.none)
    }
}

struct MyView_Previews: PreviewProvider{
    static var previews: some View{
        MyView(title: "MyView", bgColor: Color.orange)
    }
}
