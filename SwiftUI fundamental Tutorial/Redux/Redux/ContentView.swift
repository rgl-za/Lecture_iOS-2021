//
//  ContentView.swift
//  Redux
//
//  Created by 지현정 on 2021/10/13.
//

import SwiftUI

struct ContentView: View {
    // 스토어 인스턴스 생성
    let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
    
    var body: some View {
        // 서브뷰에 옵저블 오버젝트 연결
        DiceView().environmentObject(store)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
