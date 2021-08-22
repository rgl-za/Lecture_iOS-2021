//
//  MyList.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/23.
//

import SwiftUI

struct HideRowSeparatorModifier: ViewModifier {
    static let defaultListRowHeight: CGFloat = 44
    
    var insets: EdgeInsets
    var background: Color
    init(insets: EdgeInsets, background: Color){
        self.insets = insets
        
        var alpha: CGFloat = 0
        
        UIColor(background).getWhite(nil, alpha: &alpha)
        assert(alpha == 1, "")
        self.background = background
    }
    
    func body(content: Content) -> some View {
        content
            .padding(insets)
            .frame(
                minWidth: 0, maxWidth: .infinity, minHeight: Self.defaultListRowHeight,   alignment: .leading
            )
            .listRowInsets(EdgeInsets())
            .background(background)
    }
}
extension EdgeInsets{
    static let defaultListRowInsets = Self(top: 10, leading: 10, bottom: 10, trailing: 10)
}
extension View {
    func hideRowSeparator(insets: EdgeInsets = .defaultListRowInsets, background: Color = .white)
    -> some View {
        modifier(HideRowSeparatorModifier(insets: insets, background: background))
    }
}


struct MyList: View{
    
    var body: some View{
        
//        //하드코딩
//        List{
//            Text("MY LIST")
//            Text("MY LIST")
//            Text("MY LIST")
//            Text("MY LIST")
//            Text("MY LIST")
//            Text("MY LIST")
//        }
//        //반복문 foreach 사용시 id 설정 해줘야 함
//        List{
//            ForEach(1...10, id: \.self){
//                Text("MY LIST \($0)")
//            }
//        }
        
        List{
            
            Section(
                header:
                    Text("TODAY")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer:
                    Text("HAVE A NICE DAY 👍")
                ){
                ForEach(1...3, id: \.self){
                    itemIndex in //Text("MY LIST \(itemIndex)")
                    MyProject(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "13:00", end: "15:00", bgColor: Color.green).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(
                header:
                    Text("TOMORROW")
                    .font(.headline)
                    .foregroundColor(.black)
                ,footer:
                    Text("👍👍👍")
            ){
                ForEach(1...20, id: \.self){
                    itemIndex in //Text("MY LIST \(itemIndex)")
                    MyProject(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "13:00", end: "15:00", bgColor: Color.blue).hideRowSeparator(insets: EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10),background: Color.yellow)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        .listStyle(GroupedListStyle())
        //.listStyle(PlainListStyle()) //디폴트 리스트 스타일
        .navigationBarTitle("MY LIST")
        
    }
}


struct MyList_Previews: PreviewProvider{
    static var previews: some View{
        
        MyList()
    }
}
