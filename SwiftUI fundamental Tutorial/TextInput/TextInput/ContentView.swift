//
//  ContentView.swift
//  TextInput
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

struct ContentView: View {
    
    //text가 받는 변수 선언
    @State private var id : String = ""
    @State private var password : String = ""
    
    var body: some View {
        VStack(spacing: 10){
            
            HStack{
                
                TextField("아이디 입력", text: $id)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    //입력 글자 설정
                    //.allCharacters: 모든 글자를 대문자로
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action:{
                    self.id = ""
                }){
                    if(self.id.count > 0){
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.secondary)
                    }
                }
                
            }
            
            HStack{
                
                SecureField("비밀번호 입력", text: $password)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action:{
                    self.password = ""
                }){
                    if(self.password.count > 0){
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.secondary)
                    }
                }
            }
            
            
            
            Text("비번 확인하기: \(password)")
            
        }.padding(.horizontal, 50)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
