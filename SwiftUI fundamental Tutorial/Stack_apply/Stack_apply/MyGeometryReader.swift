//
//  MyGeometryReader.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/25.
//

import SwiftUI

enum index{
    case one, two, three
}


struct MyGeometryReader: View{
    
    @State
    private var index: index = .one
    
    //지오메트리 프록시를 매개뱐수로 가지고 cgpoint를 반환하는 클로저
    let centerPosition : (GeometryProxy) -> CGPoint = { proxy in
        
        return CGPoint(x: proxy.frame(in: .local).midX,
                       y: proxy.frame(in: .local).midY)
    }
    
    
    var body: some View{
        
        GeometryReader{ proxy in
            
            VStack{
                
                Button(action: {
                    print("1번")
                    
                    withAnimation{
                        self.index = .one
                    }
                    
                }){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: 100, height: proxy.size.height/3)
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
                    .frame(width: 100, height: proxy.size.height/3)
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
                    .frame(width: 100, height: proxy.size.height/3)
                    .padding(.horizontal, self.index == .three ? 50 : 0)
                    .foregroundColor(.white)
                    .background(Color.green)

                }
            }
//            }.position(CGPoint(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY))
            .position(centerPosition(proxy))
        }
        
        .background(Color.yellow)
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct MyGeometryReader_Previews: PreviewProvider{
    static var previews: some View{
        MyGeometryReader()
    }
}
