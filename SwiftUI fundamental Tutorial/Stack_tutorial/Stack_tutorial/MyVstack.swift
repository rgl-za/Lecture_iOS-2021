//
//  MyVstack.swift
//  Stack_tutorial
//
//  Created by 지현정 on 2021/07/23.
//

import SwiftUI

struct MyVstack:View {
    var body:some View{
        VStack(alignment: .trailing, spacing: 0){
            Divider().opacity(0) //frame 테두리 없애기
//                        Rectangle().frame(height:1)
        
            Text("ㅎㅇ")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom, 100)
        
            Rectangle()
                .frame(width:100, height:100)
                .foregroundColor(Color.red)
//                  .padding(.vertical, 100)
        
            Rectangle()
                .frame(width:100, height:100)
                .foregroundColor(Color.yellow)
        
            Spacer()
                .frame(height:50)
        
            Rectangle()
                    .frame(width:100, height:100)
                    .foregroundColor(Color.blue)
        
//                Spacer()
//                Spacer()
        
        }
        //쉽게 생각하면 frame=크기
        .frame(width: 300)
        .background(Color.green)
//          .edgesIgnoringSafeArea(.all)
        }
    }

struct MyVstack_Previews:PreviewProvider{
    static var previews: some View{
        MyVstack()
    }
}
