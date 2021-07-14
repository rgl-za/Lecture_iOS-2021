//
//  MyTextView.swift
//  Tutorial
//
//  Created by 지현정 on 2021/07/10.
//

import SwiftUI

struct MyTextView: View{
    
    @Binding
    var isActivated: Bool
    
    //바인딩을 사용하기 위해서는 생성자를 사용해줘야 함
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    
    //@State: 값의 변화를 감지하여 뷰에 적용
    @State
    private var index: Int = 0
    
    //배열 생성: 배경색 넣어줌
    private let backgroundColors = [
    
        Color.red,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    
    ]
    
    var body: some View{
        
        VStack{
            
            Spacer()
            
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                //frame을 하지 않으면 정중앙만 색이 들어옴
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(self.isActivated ? Color.yellow : Color.gray)
                .background(Color.black)
            
            Spacer()
            
        }.background(backgroundColors[index])
        //.edgeIgnoringSafeArea(.all/.bottom/.top): 상하단바도 채움/아래까지만 채움/상단까지만 채움
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        .onTapGesture {
            print("배경 아이템이 클릭 되었습니다")
            
            //배열의 크기가 끝까지 왔을 때의 조건문
            if(self.index == self.backgroundColors.count - 1){
                self.index = 0
            }
            else{
                self.index += 1
            }
        }
    }
}

//프리뷰 용도
struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
