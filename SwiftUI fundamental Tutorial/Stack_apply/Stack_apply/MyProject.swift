//
//  MyProject.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/07/29.
//

import SwiftUI

struct MyProject: View{
    
    var icon : String
    var title : String
    var start: String
    var end : String
    var bgColor : Color
    
    var body: some View{
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
//                Rectangle.frame(height:0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                
                Spacer().frame(height:5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(30)
        .background(bgColor)
        .cornerRadius(20)
        
        
    }
}

struct MyProject_Previews: PreviewProvider{
    static var previews: some View{
        MyProject(icon: "book.fill", title: "책 읽기", start: "13:00", end: "15:00", bgColor: Color.green)
    }
}
