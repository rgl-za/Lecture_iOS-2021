//
//  ContentView.swift
//  Picker
//
//  Created by 지현정 on 2021/10/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var select = 0
    
    let Colors = ["red", "green", "blue"]
    
    //색을 반환하는 함수, 인덱스가 들어오면 칼라로 반환
    func changeColor(index: Int) -> Color{
        switch index {
        case 0:
            return Color.red
        case 1:
            return Color.green
        case 2:
            return Color.blue
        default:
            return Color.red
        }
    }
    
    var body: some View {
        
        VStack(alignment: .center){
            
            Circle()
                .foregroundColor(self.changeColor(index: select))
                .frame(width: 50, height: 50)
            
            Text("value: \(select)")
            Text("color: \(Colors[select])")
            
            Picker(selection: $select, label: Text(""), content: {
                Text("red").tag(0)
                Text("green").tag(1)
                Text("blue").tag(2)
            }).pickerStyle(SegmentedPickerStyle())
            
            Picker(selection: $select, label: Text(""), content: {
                Text("red").tag(0)
                Text("green").tag(1)
                Text("blue").tag(2)
            })
            .frame(width: 60, height: 100)
            .clipped()
            .padding(10)
            .border(self.changeColor(index: select), width: 10)
            
            
        }.padding(.horizontal, 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
