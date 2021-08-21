//
//  ContentView.swift
//  MyText
//
//  Created by 지현정 on 2021/07/10.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
//        formatter.dateFormat = "YYYY년 M월 dd일"
        formatter.dateStyle = .long
        return formatter
    }()
    
    var today = Date()
    
    var TrueorFalse : Bool = false
    
    var Number : Int = 123
    
    var body: some View {
        VStack{
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ")
            //글자와 글자 사이의 간격
            //글자 밑에서 사용해야 함
            .tracking(1)
            
            .font(.system(.body, design: .rounded))
            .fontWeight(.medium)
            //디폴트 값: leading
            .multilineTextAlignment(.center)
        
            //문장 수 제한
            //nil(멀티 라인)
            .lineLimit(nil)
            //글자와 글자 사이의 거리
            .lineSpacing(10)
            //글자 수 요약
            .truncationMode(.middle)
            //글자 그림자
            .shadow(color: .red, radius: 1.5, x: -10.0, y: 10.0)
            
            //padding 위아래 값 주기: verical
            //양 옆으로 값 주기: horizental
            .padding(20)
            .background(Color.yellow)
            //padding 밖에다가는 적용 안됨
            .cornerRadius(20)
            
            //중첩 padding
            .padding()
            .background(Color.green)
            .cornerRadius(20)
            
            .padding()
            //데이터를 스트링으로 해서 포메터를 이용하여 텍스트로 출력
            Text("오늘의 날짜는 \(today, formatter: ContentView.dateFormat)")
            
            //bool 타입은 string으로 형변환하여 출력
            Text("T or F \(String(TrueorFalse))")
            
            Text("\(Number)")
            
        Text("안녕하세요!!")
            .background(Color.gray)
            .foregroundColor(Color.white)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
