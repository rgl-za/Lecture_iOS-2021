//
//  MyStackView.swift
//  Tutorial
//
//  Created by 지현정 on 2021/07/10.
//

import SwiftUI

struct MyStackView: View{
    
    
    //데이터를 연동 시킴
    @Binding
    var isActivated: Bool
    
    //바인딩을 사용하기 위해서는 생성자를 사용해줘야 함
    init(isActivated: Binding<Bool> = .constant(false)){
        _isActivated = isActivated
    }
    
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 50))
            Text("2!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 50))
            Text("3!")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(.system(size: 50))
        }//Vstack 수평
        .background(self.isActivated ? Color.green : Color.red)
        .padding(self.isActivated ? 10 : 0)
        
    }
    
}

//보여주는 용도
struct MyStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyStackView()
    }
}
