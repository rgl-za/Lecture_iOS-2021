//
//  ContentView.swift
//  Tutorial
//
//  Created by 지현정 on 2021/07/10.
//

import SwiftUI

struct ContentView: View {
    
    //@State: 값의 변화를 감지하여 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                HStack{
                    //MyStackView(): 자동적으로 가져옴
                    //MyStackView(isActivated: $isActivated): 컨텐트 뷰에서 데이터를 넘겨서 MyStackView안에다가 엑티비티를 넘겨줌
                    MyStackView(isActivated: $isActivated)
                    MyStackView(isActivated: $isActivated)
                    MyStackView(isActivated: $isActivated)
                                   
                                    }//Hstack 수직
                            
                                    //padding .leading 왼쪽
                                    //padding .trailing 오른쪽
                                    //padding defalut .all
                                    .padding(isActivated ? 50.0 : 10.0)
                                    
                            //조건문
                                //if (isActiviated==true) Color.yellow
                                //else Color.red
                                    .background(isActivated ? Color.yellow : Color.black)
                                  
                            //탭 제스쳐 추가 .onTapGesture
                            //뷰에다가 클릭 처리하기 위해서는 onTapGesture 설정
                                    .onTapGesture {
                                        print("HStack이 클릭 되었습니다")
                                        //컨텐트 안에 있는 애들을 변경시키기 위해서 self
                                        //toggle(): 알아서 true이면 false로 false면 true로 변경
                                        
                                        //애니메이션괴 힘께
                                        withAnimation{
                                            self.isActivated.toggle()
                                        }
                                    }//HStack
                
                            //네비게이션 버튼(=링크) 만드는 곳
                NavigationLink(destination: MyTextView(isActivated: $isActivated)){
                                Text("네비게이션")
                                    .font(.system(size: 40))
                                    .fontWeight(.bold)
                                    .padding()
                                    .background(Color.yellow)
                                    .foregroundColor(Color.white)
                                    
                                    .cornerRadius(30)
                            } .padding(.top, 50)
            }
            
            
            
            }//NavigationView
        }
}

//프리뷰 용도
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
