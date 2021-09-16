//
//  ContentView.swift
//  Toast_Popup
//
//  Created by 지현정 on 2021/09/15.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldBottomSolidMessage : Bool = false
    
    @State var shouldBottomToastMessage : Bool = false
    
    @State var shouldTopSolidMessage : Bool = false
    
    @State var shouldTopToastMessage : Bool = false
    
    @State var shouldPopupMessage : Bool = false
    
    func createBottomSolidMessage() -> some View{
        HStack(spacing:10){
            Image(systemName: "heart.circle.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment:.leading, spacing: 0){
                Text("보리는 사랑스러워요")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Text("콩알만한게 너무 사랑스럽고 귀여워요")
                    .lineLimit(2)
                    .font(.system(size: 14))
                   
                    Divider() //가중치를 주기 위함
                        .opacity(0)
            }
            .foregroundColor(.white)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
        
    }
    
    func createBottomToastMessage() -> some View{
        HStack(alignment: .top, spacing:10){
            Image("bori")
                .resizable() //사진 사이즈 줄이기
                .aspectRatio(contentMode: ContentMode.fill) //이미지 찌그러짐 방지
                .offset(y: 10)
                .frame(width:50, height: 70) //사진 크기 조정
                .cornerRadius(10)
            
            VStack(alignment:.leading){
                Text("보리는 산책을 좋아해요")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                
                Text("시간과 장소를 가리지 않고 산책하는걸 좋아해요")
                    .font(.system(size: 14))
                    
                    Divider() //가중치를 주기 위함
                        .opacity(0)
            }
            .foregroundColor(.white)
        }
        .padding(15)
        .frame(width:300)
        .background(Color.green)
        .cornerRadius(20)

    }
    
    func createTopSolidMessage() -> some View{
        HStack(alignment: .center, spacing:10){
            Image("bori2")
                .resizable() //사진 사이즈 줄이기
                .aspectRatio(contentMode: ContentMode.fill) //이미지 찌그러짐 방지
                .offset(y:-15)
                .frame(width:70, height: 70) //사진 크기 조정
//                .cornerRadius(10) 이걸 적용하면 사진이 날라감 왜지?
            
            VStack(alignment:.leading){
                Text("보리는 팔색조 같은 매력이 있어요")
                    .fontWeight(.bold)
                    .foregroundColor(.white)


                Text("본인도 매력쟁이인걸 아는 것 같아요")
                    .font(.system(size: 14))

                    Divider() //가중치를 주기 위함
                        .opacity(0)
            }
            .foregroundColor(.white)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 0 : 35)
        //글자가 위로 말려가는 걸 방지
        .background(Color.blue)

    }
    
    func createTopToastMessage() -> some View{
        HStack(alignment: .top, spacing:10){
            Image(systemName: "gift.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .padding(.leading, 5)
            
            VStack(alignment:.center, spacing: 2){
                Text("보리에게 선물해주세요")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("보리는 관절껌을 제일 좋아해요")
                    .font(.system(size: 14))
                    .foregroundColor(.white)
                    .lineLimit(1)
            }
            .padding(.trailing, 15)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.red)
        .cornerRadius(25)
        .padding(.top, UIApplication.shared.windows.first? .safeAreaInsets.bottom == 0 ? 0 : 30)
        
    }
    
    func createPopupMessage() -> some View{
        VStack(spacing: 10){
            Image("bori3")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .frame(width: 100, height: 100)
                .padding()
            
            Text("우주촤강 귀요미인걸 인정하시나요?")
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Text("池家 최고의 귀요미 입니다")
                .font(.system(size: 12))
                .fontWeight(.bold)
                .foregroundColor(Color(red: 0.9, green: 0.9, blue: 0.9))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height: 10)
            
            Button(action: {
                self.shouldPopupMessage = false
            }){
                Text("네")
                    .font(.system(size: 14))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(20)
        }
        .padding(.horizontal, 10)
        .frame(width: 300, height: 400)
        .background(Color(hexcode: "F6B65A"))
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    var body: some View {
        ZStack{
            VStack(spacing: 10){
                
                Button(action: {
                    self.shouldTopToastMessage = true
                }, label: {
                    Text("TopToast")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldTopSolidMessage = true
                }, label: {
                    Text("TopSolid")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldBottomSolidMessage = true
                }, label: {
                    Text("BottomSolid")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldBottomToastMessage = true
                }, label: {
                    Text("BottomToast")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
                
                Button(action: {
                    self.shouldPopupMessage = true
                }, label: {
                    Text("Popup")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(hexcode: "F6B65A"))
                        .cornerRadius(10)
                })
                
            }// VStack
            .edgesIgnoringSafeArea(.all)
        }// ZStack
        .popup(isPresented: $shouldBottomSolidMessage , type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createBottomSolidMessage()
            })
        
        .popup(isPresented: $shouldBottomToastMessage , type: .floater(verticalPadding: 20), position: .bottom, animation: .spring(), autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createBottomToastMessage()
            })
        
        .popup(isPresented: $shouldTopSolidMessage , type: .toast, position: .top, animation: .easeInOut, autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopSolidMessage()
            })
        
        .popup(isPresented: $shouldTopToastMessage , type: .floater(verticalPadding: 20), position: .top, animation: .spring(), autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopToastMessage()
            })
        
        .popup(isPresented: $shouldPopupMessage , type: .default, position: .top, animation: .spring(), dragToDismiss: true, closeOnTap: false, closeOnTapOutside: true, view: {
            self.createPopupMessage()
            })
        }
    }


extension Color{
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
