//
//  TodoView.swift
//  DeepLink
//
//  Created by 지현정 on 2021/10/05.
//
import Foundation
import SwiftUI

// 데이터 모델 만들기
struct TodoItem : Identifiable, Hashable {
    var id : UUID
    var title : String
}

// 데이터 더미 생성 함수
// TodoItem 데이터 배열 변환
func prepareData() -> [TodoItem]{
    print("prepareData() called")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "TODO \(i)")
        print("newTodo.id : \(newTodo.id) / title: \(newTodo.title)")
        // 위에서 만든 빈 배열 (newList)를 append 해서 새로 만든 아이템을 붙여줌
        newList.append(newTodo)
    }
    return newList
}


struct TodosView: View {
    
    // State를 통해 데이터를 가지게 끔 함
    @State var todoItems = [TodoItem]()
    
    // 옵셔널로 처리
    @State var activeUUID: UUID?
    
    // 생성자 메소드
    init() {
        // todoItems에 prepareData를 통해 데이터가 들어감
        _todoItems = State(initialValue: prepareData())
    }
    
    
    var body: some View{
        NavigationView {
            List(todoItems) { todoItem in
                
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    tag: todoItem.id,
                    //activeUUID 값이 변경되면 해당하는 링크로 이동
                    selection: $activeUUID,
                    label: {
                        Text("\(todoItem.title )")
                    })
            }
            .navigationTitle(Text("TODO LIST"))
            .onOpenURL(perform: { url in
                if case .todoItem(let id) = url.detailPage{
                    print("Over on ID: \(id)")
                    activeUUID = id
                }
            })
        }
    }
    
}

struct TodosView_Previews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}
