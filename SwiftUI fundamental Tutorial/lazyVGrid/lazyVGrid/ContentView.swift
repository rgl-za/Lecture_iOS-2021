//
//  ContentView.swift
//  lazyVGrid
//
//  Created by 지현정 on 2021/10/07.
//

import SwiftUI


struct MyModel : Identifiable{
    
    let id = UUID()
    let title : String
    let content : String
    
}
// 더미 데이터를 가져오도록 함
extension MyModel{
    // 마이모델에 대한 인스턴스를 생성하지 않아도 접근해서 가져올 수 있도록
    static var dummyDataArray: [MyModel]{
        (1...2000).map{ (number: Int) in
            MyModel(title: "title: \(number)", content: "content: \(number)")
        }
    }
}

struct ContentView: View {
    
    var dummyDataArray = MyModel.dummyDataArray
    
    
    
    var body: some View {
        
        
        // 스크롤 뷰로 감싸서 스크롤이 가능하도록 설정
        ScrollView{
            
            
            // 레이지 버티칼 크리드 뷰
            // 컬럼: 호리존탈 아이템 레이아웃을 설정하는 부분
            // 그리드 아이템 옵션 3가지
            // .fixed: 고정값 (200)
            // .adaprive: 최소 (50)만큼의 사이즈로 여러 개를 채워줌: 계산해서 분할로 채우기
            // .flexible: 계산해서 하나만 채우기
            LazyVGrid(columns: [
                GridItem(.adaptive(minimum: 50)),
                GridItem(.fixed(50)),
                GridItem(.flexible(minimum: 50))
            // spacing: 각 줄에 대한 spacing 기본 값 = 10
            ], spacing: 100, content: {
                ForEach(dummyDataArray, content:{ (dataItem: MyModel) in
                    Rectangle().foregroundColor(.blue)
                        .frame(height: 120)
                        .overlay(Text("\(dataItem.title)"))
                })
            })
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
