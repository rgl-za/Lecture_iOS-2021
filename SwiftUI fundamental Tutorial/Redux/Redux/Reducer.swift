//
//  Reducer.swift
//  Redux
//
//  Created by 지현정 on 2021/10/13.
//

import Foundation

// 클로저: 제네릭 타입
// typealias란? 별칭 짓기: 오른쪽 식을 왼쪽으로 바꾼다.
typealias Reducer<State, Action> = (inout State, Action) -> Void
// state라는 애가 매개변수로 들어올 때 변경하는 키워드: inout
// (inout State, Action) -> Void 해당 클로저 자체를 별칭으로 리듀서로 칭함, State와 Action을 가지고 있음

//필터링하는 메소드
func appReducer(_ state: inout AppState, _ action: AppAction) -> Void{
    //들어오는 액션에 따라 분기처리 (= 필터링)
    switch action {
    case .rollTheDice:
        // 앱의 상태를 변경하기
        state.currentDice = ["⚀", "⚁", "⚂", "⚃", "⚄", "⚅"].randomElement() ?? "⚀"
        // 값이 비었다면 ⚀
    }
}
 
