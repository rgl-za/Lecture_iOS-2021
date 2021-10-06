//
//  ContentView.swift
//  lazyVGrid
//
//  Created by 지현정 on 2021/10/07.
//

import SwiftUI

// 타입을 포이치로 돌리려면 케이스이터러블 해줘야함 = 케이스를 콜렉션으로 제공한다는 의미
enum LayoutType : CaseIterable{
    case table, grid, multiple
}

//레이아웃 타입 자체를 익스텐션
extension LayoutType{
    //레이아윳 타입에 대한 컬럼이 자동으로 설정되도록 함
    var columns : [GridItem]{
        switch self {
        case .table:
            return [
                //flexible 하나로 한줄로 표현
                GridItem(.flexible())
            ]
        case .grid:
            return [
                // flexible 두개를 넣어서 두개의( 아이템을 들어가게 )레이아웃 표현
                GridItem(.flexible()),
                GridItem(.flexible())
            ]
        case .multiple:
            return [
                // 어답티브를 통해 크기를 닿는데 까지 아이템을 여러개 넣기
                GridItem(.adaptive(minimum: 100))
            ]
        }
    }
}

struct lazyVGrid_apply: View {
    
    @State var dummyData = MyModel.dummyDataArray
    
    @State var selected: LayoutType = .table
    
    var body: some View {
        
        VStack{
            Picker(selection: $selected, label: Text("LayoutType"), content: {
                //layout.allcases: 레이아웃이 가지고 있는 모든 케이스들이 반복해서 들어옴
                ForEach(LayoutType.allCases, id: \.self, content: { layoutType
                    in
                    switch layoutType{
                    case .table:
                        Image(systemName: "list.dash")
                    case .grid:
                        Image(systemName: "square.grid.2x2.fill")
                    case .multiple:
                        Image(systemName: "circle.grid.3x3.fill")
                    }
                })
            })
            .frame(width: 250)
            .pickerStyle(SegmentedPickerStyle())
            
            //content
            ScrollView{
                LazyVGrid(columns: selected.columns, content: {
                    ForEach(dummyData){ dataItem in
                        
                        switch selected{
                            case .table :
                                MyTable(icon: "book.fill", title: "공부하기", start: "아침에 눈 뜨고", end: "뒤지기 전까지", color: Color.blue)
                            case .grid:
                                RoundedRectangle(cornerRadius: 25)
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
                                    .frame(height: 200)
                                    .overlay(
                                        VStack(spacing: 2){
                                            Circle().frame(height: 100)
                                                .foregroundColor(Color.init(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                                            Spacer().frame(height: 10)
                                            Text("\(dataItem.title)")
                                                .font(.system(size: 20))
                                                .fontWeight(.bold)
                                            Text("\(dataItem.content)")
                                        }
                                    )
                            case .multiple:
                                Rectangle()
                                    .foregroundColor(Color.init(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)))
                                    .frame(height: 100)
                            
                        }
                    }
                    
                })
                .animation(.easeInOut)
                .padding(.horizontal, 10)
            }
        }
    }
}

struct lazyVGrid_apply_Previews: PreviewProvider {
    static var previews: some View {
        lazyVGrid_apply()
    }
}
