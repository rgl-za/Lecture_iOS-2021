//
//  MyCustomView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/31.
//

import SwiftUI

enum TabIndex {
    case home, profile, cart
}

struct MyCustomView: View{
    
    @State
    var tabIndex : TabIndex
    
    @State
    var largerScale : CGFloat = 1.4
    
    //TabIndex를 매개변수로 갖는 함수, MyView를 반환함
    func changeView(tabIndex: TabIndex) -> MyView{
        switch tabIndex {
        case .home:
            return MyView(title: "home", bgColor: Color.green)
        case .cart:
            return MyView(title: "cart", bgColor: Color.purple)
        case .profile:
            return MyView(title: "profile", bgColor: Color.blue)
            
        default:
            return MyView(title: "home", bgColor: Color.green)
        }
    }
    
    func changeIcon(tabIndex: TabIndex) -> Color{
        switch tabIndex {
        case .home:
            return Color.green
        case .cart:
            return Color.purple
        case .profile:
            return Color.blue
            
        default:
            return Color.green
        }
    }
    
    
    //geometry를 사용하기 위함
    func circlePosition(tabIndex: TabIndex, geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
            
        default:
            return -(geometry.size.width / 3)
        }
    }
    
    var body: some View{
        
        GeometryReader{ geometry in
            ZStack(alignment:.bottom){
                //MyCustomView 안에서 부르기 때문에 self로 지칭
                //함수호출, 알아서 뷰를 반환함
                
                self.changeView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    //디바이스에 따른 원 위치 계산 필요
                    .offset(x: self.circlePosition(tabIndex: self.tabIndex, geometry: geometry), y: UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 20: 0)
                    .foregroundColor(.white)
                
                VStack(spacing: 0){
                
                HStack(spacing:0){
                    Button(action: {
                        print("home 클릭")
                        
                        withAnimation{
                            self.tabIndex = .home
                        }
                    }){
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .home ? self.changeIcon(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width/3, height: 50)
                            .offset(y: self.tabIndex == .home ? -10 : 0)
                    }.background(Color.white)
                    Button(action: {
                        print("cart 클릭")
                        withAnimation{
                            self.tabIndex = .cart
                        }
                    }){
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .cart ? self.changeIcon(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width/3, height: 50)
                            .offset(y: self.tabIndex == .cart ? -10 : 0)
                    }.background(Color.white)
                    Button(action: {
                        print("profile 클릭")
                        withAnimation{
                            self.tabIndex = .profile
                        }
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                            .foregroundColor(self.tabIndex == .profile ? self.changeIcon(tabIndex: self.tabIndex): Color.gray)
                            .frame(width: geometry.size.width/3, height: 50)
                            .offset(y: self.tabIndex == .profile ? -10 : 0)
                    }.background(Color.white)
                }
                Rectangle()
                    .foregroundColor(.white)
                    
                    //홈 버튼 있는 기종에 따라 Padding 조건문 추가
                    //홈버튼이 있다면 frame을 넣지 않고 홈버튼이 없다면 frame을 넣음
                    .frame(height: UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 0 : 20)
                    
            }
        }
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MyCustomView_Previews: PreviewProvider{
    static var previews: some View{
        MyCustomView(tabIndex: .home)
        
    }
}
