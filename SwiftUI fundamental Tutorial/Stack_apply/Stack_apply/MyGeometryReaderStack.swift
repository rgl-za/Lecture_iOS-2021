//
//  MyGeometryReaderStack.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/30.
//

import SwiftUI

enum Index{
    case one, two, three
}

struct MyGeometryReaderStack: View{
    
    @State
    private var index: Index = .one
    
    var body: some View{
        
        GeometryReader{ geometry in
            
            VStack(spacing: 0){
                
                Button(action: {
                    print("1번")
                    
                    withAnimation{
                        self.index = .one
                    }
                    
                }){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height/3)
                    .padding(.horizontal, self.index == .one ? 50 : 0)
                    .foregroundColor(.white)
                    .background(Color.red)

                }
                
                Button(action: {
                    print("2번")
                    
                    withAnimation{
                        self.index = .two
                    }
                    
                }){
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height/3)
                    .padding(.horizontal, self.index == .two ? 50 : 0)
                    .foregroundColor(.white)
                    .background(Color.blue)

                }
                
                Button(action: {
                    print("3번")
                    
                    withAnimation{
                        self.index = .three
                    }
                    
                }){
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: geometry.size.height/3)
                    .padding(.horizontal, self.index == .three ? 50 : 0)
                    .foregroundColor(.white)
                    .background(Color.green)

                }
            }
            
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            
        }
        
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MyGeometryReaderStack_Previews: PreviewProvider{
    static var previews: some View{
        MyGeometryReaderStack()
    }
}

