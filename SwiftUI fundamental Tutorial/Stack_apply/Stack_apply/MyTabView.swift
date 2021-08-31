//
//  MyTabView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/31.
//

import SwiftUI

struct MyTabView: View{
    
    var body: some View{
        
        TabView{
//            //보여질 화면
//            Text("1")
//            //
//                .fontWeight(.bold)
//                .font(.largeTitle)
//                .tabItem {
//                    Image(systemName: "airplane")
//                    Text("1번")
//                }
//                .tag(0) //0번부터
            
            MyView(title: "1", bgColor: Color.orange)
            //
                .tabItem {
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0) //0번부터
            
            
            MyView(title: "2", bgColor: Color.red)
            //
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(1) //0번부터
            
           
            MyView(title: "3", bgColor: Color.blue)
            //
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(2) //0번부터
        }
    }
}


struct MyTabView_Previews: PreviewProvider{
    static var previews: some View{
        MyTabView()
    }
}
