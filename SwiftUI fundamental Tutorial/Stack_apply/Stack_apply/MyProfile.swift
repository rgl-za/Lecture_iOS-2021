//
//  MyProfile.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/24.
//

import SwiftUI

struct MyProfile: View {
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                
                    CircleImageView()
                        .padding(.vertical, 20)
                        

                    .navigationBarTitle("MY PROFILE", displayMode: .automatic)
                        
                  
                    .navigationBarItems(trailing: NavigationLink(destination: MySetting()){
                        Image(systemName: "slider.horizontal.3")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                    })
                
                   
                
                
                Text("덩이")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .padding(.top, 30)
                Text("막학년 코딩노예")
                    .font(.system(size:20))
                    .padding(.top, 20)
                
                HStack{
                        NavigationLink(
                            destination: MyWebView(url: "https://www.instagram.com/__juzzg").edgesIgnoringSafeArea(.all)){
                            Text("팔로우 하기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(10)
                                .background(Color.purple)
                                .cornerRadius(20)
                        }
                        NavigationLink(
                            destination: MyWebView(url: "https:/blog.naver.com/hj__0403")
                                .edgesIgnoringSafeArea(.all)){
                            Text("서로이웃 하기")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(10)
                                .background(Color.green)
                                .cornerRadius(20)
                    }
                    
                }//HStack
                
                .padding(15) //버튼패딩
                
            }
        }
    }
}


struct MyProfile_Previews: PreviewProvider{
    static var previews: some View{
        MyProfile()
    }
}
