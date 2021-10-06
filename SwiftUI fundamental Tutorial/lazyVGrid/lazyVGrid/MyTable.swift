//
//  MyTable.swift
//  lazyVGrid
//
//  Created by 지현정 on 2021/10/07.
//

import SwiftUI

struct MyTable : View{
    
    var icon : String
    var title : String
    var start : String
    var end : String
    var color : Color
    
    var body: some View{
        HStack(spacing: 10){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider().opacity(0)
                Text(title)
                    .fontWeight(.bold)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                Spacer().frame(height:5)
                Text("\(start)-\(end)")
                    .foregroundColor(.white)
            }
        }
        .padding(20)
        .background(color)
        .cornerRadius(20)
    }
}

struct MyTable_Previews: PreviewProvider{
    static var previews: some View{
        MyTable(icon: "book.fill", title: "공부하기", start: "아침에 눈 뜨고", end: "뒤지기 전까지", color: Color.blue)
    }
}
