//
//  ContentView.swift
//  Menu
//
//  Created by 지현정 on 2021/10/06.
//

import SwiftUI

let Family = ["보리 🐶", "엄마 🐴", "아빠 🐴","나 🐯","효정이 🐍"]

struct ContentView: View {
    
    @State private var shouldShowAlert : Bool = false
    @State private var myText : String = ""
    @State private var selected : Int = 0
    
    var body: some View {
        
        NavigationView{
            VStack(spacing: 20){
                Spacer() //가중치
                Text("\(Family[selected])")
                    .font(.system(size: 60))
                    .bold()
                
                Text("우측 상단의 메뉴를 눌러주세요!")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Spacer()
            }
            
                .padding()
                .navigationTitle("우리가족")
                //navigation toolbar라고 생각하면 편할듯
                //위치, 내용
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing,
                        content: {
                        //menu content=메뉴의 갯수, label = 메뉴 버튼 자체
                        Menu(content: {
                            //vstack 처럼 생김
                            
                            
                            Button(action: {
                                //action 처리
                                print("check")
                                shouldShowAlert = true
                                myText = "돈길만 걷자"
                            }, label: {
                                // label
                                Label("행복한 우리집", systemImage: "house.fill")
                            })
                            
                            Section{
                            
                                // 멀티 트레일링 클로저
                                Button{
                                    shouldShowAlert = true
                                    myText = "건강 길만 걷자"
                                
                                } label : {
                                    Label("행복한 우리가족", systemImage: "person.3.fill")
                                
                                }
                            }
                            
                            Picker(selection: $selected, label: Text("우리 가족")){
                                //foreach를 쓰면서 인덱스를 사용하기 위해서 indices 사용
                                ForEach(Family.indices, id: \.self, content: { index in
                                    Text("\(Family[index])").tag(index)
                                    
                                })
                            }
                            
                            
                            
                            
                        }, label: {
                            Circle().foregroundColor(.blue)
                                .frame(width: 50, height: 50)
                                //overlay로 메뉴 뷰 올리기
                                .overlay(Label("more", systemImage: "ellipsis")
                                            .font(.system(size: 30))
                                            //색상 지정하는 다른 방법 Color.init(Color.Literal)
                                            .foregroundColor(.white)
                                )
                            
                        }) // Menu
                    }) // Label
                }) //toolbar
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("화이팅"), message: Text("\(myText)"), dismissButton: .default(Text("동의"))
                    )
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
