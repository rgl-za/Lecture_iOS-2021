//
//  ContentView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    
    @State //State는 값을 감지함
    var isNavigationBarHidden : Bool = false
    
    var body: some View {
        
        NavigationView{
            
            ZStack(alignment: .bottomTrailing){
                
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack{
                        
                        NavigationLink(destination: MyList()){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                            
                        }
                        
                        Spacer()
                        
                        Image(systemName: "person.crop.circle.fill")
                            .font(.largeTitle)
                        
                    }.padding(.top, 20)
                    .padding(.horizontal, 20)
                    
                    Text("TODO LIST")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                        .padding(.horizontal, 20)
                        .padding(.top,20)
                    ScrollView{
                                VStack{
                                        MyCard()
                                    MyProject(icon: "tray.fill", title: "책상 정리하기", start: "13:00", end: "14:00", bgColor: Color.blue)
                                    MyProject(icon: "book.fill", title: "책 읽기", start: "14:00", end: "16:00", bgColor: Color.green)
                                    MyProject(icon: "case.fill", title: "기숙사 짐 싸기", start: "16:00", end: "18:00", bgColor: Color.red)
                                    MyBasic()
                                        
                                        
                                }.padding()
                        }
                }
                Circle()
                    .foregroundColor(Color.yellow)
                    .frame(width:60, height: 60)
                    .overlay(Image(systemName: "plus")
                                .font(.system(size:30))
                                .foregroundColor(.white))
                    .padding(10)
                    
                    .shadow(radius: 20)
            }//ZStack
            
            .navigationTitle("Main")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
                //렌더링되면서 self.isNavigationBarHidden이 true가 되면서 뷰를 다시 그림 - > 없어짐 근데 둘 다 없어짐 
            }
            
        }//NavigationView

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
