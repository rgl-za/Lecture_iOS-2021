//
//  Picker2.swift
//  Picker
//
//  Created by 지현정 on 2021/10/05.
//

import SwiftUI

enum School : String, CaseIterable{
    case elementary = "초등학교"
    case middle = "중학교"
    case high = "고등학교"
}

// 유효 아이디 고유 값 설정하기
struct MyFriend : Identifiable, Hashable{
    var id = UUID()
    var name : String
    var school : School
}


struct Picker2: View{
    
    @State private var filterValue = School.elementary
    
    @State private var Friends = [MyFriend]()
    
    // State에 값을 넣어주는 방법
    // 생성자 메소드가 필요함
    init(){
        var newList = [MyFriend]()
        
        for i in 0...20{
            let newFriend  = MyFriend(name: "내 친구\(i)", school: School.allCases.randomElement()!)
            newList.append(newFriend)
            
        }
        _Friends = State(initialValue: newList)
    }
    
    var body: some View{
        VStack{
            Text("선택된 카테고리: \(filterValue.rawValue)")
            // rawValue: enum의 데이터 갖고 오기
            Picker(selection: $filterValue, label: Text(""), content: {
                Text("초등학교").tag(School.elementary)
                Text("중학교").tag(School.middle)
                Text("고등학교").tag(School.high)
            }).pickerStyle(SegmentedPickerStyle())
            
            List{
                ForEach(Friends.filter{ filterTerm in
//                    같은 말
//                    $0.school == filterValue
                    filterTerm.school == filterValue
                }) { friendItem in
                    GeometryReader{ geometryProxy in
                        HStack{
                            Text("name: \(friendItem.name)")
                                .frame(width: geometryProxy.size.width / 2)
                            Divider()
                            Text("name: \(friendItem.school.rawValue)")
                                .frame(width: geometryProxy.size.width / 2)
                }
            }
        }
    }
            
//            List{
//                ForEach(Friends, id: \.self){ friendItem in
//                    GeometryReader{ geometryProxy in
//                    HStack{
//                        Text("name: \(friendItem.name)")
//                            .frame(width: geometryProxy.size.width / 3)
//                        Divider()
//                        Text("school: \(friendItem.school.rawValue)")
//                            .frame(width: geometryProxy.size.width / 2)
//                    }
//                    }
//                }
//            }
        }
    }
}

struct Picker2_Previews: PreviewProvider {
    static var previews: some View{
        Picker2()
    }
}
