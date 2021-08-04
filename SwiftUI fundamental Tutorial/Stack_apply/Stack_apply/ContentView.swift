//
//  ContentView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/07/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
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
                                    MyBasic()
                                MyProject(icon: "tray.fill", title: "정리하기", start: "16:00", end: "17:00", bgColor: Color.blue)
                                    
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
