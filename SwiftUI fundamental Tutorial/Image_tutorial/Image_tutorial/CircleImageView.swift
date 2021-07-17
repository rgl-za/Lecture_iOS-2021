//
//  CircleImageView.swift
//  Image_tutorial
//
//  Created by 지현정 on 2021/07/11.
//

import SwiftUI

struct CircleImageView : View{
    var body : some View{
//        Image(systemName: "flame.fill")
//            .font(.system(size: 200))
//            .foregroundColor(.red)
//            .shadow(color: .gray, radius: 2, x: 0, y:10)
        Image("profile")
            // 이미지 사이즈 맞추기
            .resizable()
            
            .scaledToFill()
            // 이미지 비율 맞추기 .scaledToFit(), .scaledToFill()
//            .aspectRatio(contentMode:.fill)
            //이미지 자체 크기 자르기
            .frame(width: 300, height: 300)
            
            .clipShape(Circle())
            .shadow(color: .gray, radius: 15)
            .overlay(
                Circle()
                    .foregroundColor(.yellow)
                    .opacity(0)
                //투명도 1=100% 0.5 =. 0%
        )
//            //뷰를 덧 씌움
//            .overlay(Circle().stroke(Color.black, lineWidth: 10).padding()
//            )
//            //오버레이 안에 오버레이 가능
//            .overlay(Circle().stroke(Color.blue, lineWidth: 10).padding(30)
//            )
//            //오버레이 안에 오버레이 가능
//            .overlay(Circle().stroke(Color.red, lineWidth: 10)
//            )
//            .overlay(
//                Text("ㅎㅇ")
//                    .foregroundColor(.white)
//                    .font(.system(size: 50))
//                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//            )
            
            //.clipped()
            // 상하단 채우기
            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
        static var previews: some View{
            CircleImageView()
        }
    }

