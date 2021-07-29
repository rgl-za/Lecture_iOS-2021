//
//  MyBasic.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/07/29.
//

import SwiftUI

struct MyBasic: View{
    
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
//                Rectangle.frame(height:0)
                Text("test")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height:5)
                
                Text("test")
                    .foregroundColor(.white)
            }
        }
        .padding(30)
        .background(Color.purple)
        .cornerRadius(20)
        
        
    }
}

struct MyBasic_Previews: PreviewProvider{
    static var previews: some View{
        MyBasic()
    }
}
