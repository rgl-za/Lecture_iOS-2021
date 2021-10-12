//
//  AppState.swift
//  Redux
//
//  Created by 지현정 on 2021/10/13.
//
// 앱의 상태, 즉 데이터
import Foundation

struct AppState{
    var currentDice: String = ""{
        didSet{
            print("currentDice: \(currentDice)", #fileID, #function)
        }
    }
}

