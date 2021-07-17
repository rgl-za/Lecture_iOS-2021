//
//  ContentView.swift
//  Image_tutorial
//
//  Created by 지현정 on 2021/07/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                Color.blue.ignoresSafeArea()
                CircleImageView()
                
                HStack{
                        NavigationLink(
                            destination: MyWebview(url: "https://www.instagram.com/__juzzg").edgesIgnoringSafeArea(.all)){
                            Text("팔로우 하기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(10)
                                .background(Color.purple)
                                .cornerRadius(20)
                        }
                        NavigationLink(
                            destination: MyWebview(url: "https:/blog.naver.com/hj__0403")
                                .edgesIgnoringSafeArea(.all)){
                            Text("서로이웃 하기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(7)
                                .background(Color.green)
                                .cornerRadius(20)
                    }
                    .padding()
                }//HStack
                .padding(50) //원 패딩
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
