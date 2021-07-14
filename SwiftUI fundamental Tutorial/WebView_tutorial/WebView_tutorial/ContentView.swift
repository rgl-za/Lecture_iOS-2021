//
//  ContentView.swift
//  WebView_tutorial
//
//  Created by 지현정 on 2021/07/10.
//

//UIViewController와 SwiftUI는 호환 가능함

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView{
            
            HStack{
                //destination: 다음에 보여줄 화면
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.naver.com").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("네이버")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.daum.net").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("다음")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.yellow)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                
                NavigationLink(
                    destination: MyWebview(urlToLoad: "http://www.google.com").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)){
                    Text("구글")
                        .font(.system(size: 20))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(20)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(20)
                }
                    
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
