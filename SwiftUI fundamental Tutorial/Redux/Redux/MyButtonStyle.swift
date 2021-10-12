//
//  ButtonStyle.swift
//  Redux
//
//  Created by 지현정 on 2021/10/13.
//

import Foundation
import SwiftUI

struct MyButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Configuration) -> some View{
        configuration
            .label
            .font(.system(size: 20))
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

struct MyButtonStyle_Previews: PreviewProvider{
    static var previews: some View{
        Button(action: {
            
        }, label: {
            Text("Button")
                .fontWeight(.heavy)
        }).buttonStyle(MyButtonStyle())
    }
}
