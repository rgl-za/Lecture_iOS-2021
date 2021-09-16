//
//  Extensions.swift
//  Toast_Popup
//
//  Created by 지현정 on 2021/09/16.
//

import Foundation
import SwiftUI

extension Color{
    init(hexcode: String){
        let scanner = Scanner(string: hexcode)
        var rgbValue: UInt64 = 0
        
        scanner.scanHexInt64(&rgbValue)
        
        let red = (rgbValue & 0xff0000) >> 16
        let green = (rgbValue & 0xff00) >> 8
        let blue = rgbValue & 0xff
        
        self.init(red:Double(red) / 0xff, green:Double(green) / 0xff, blue:Double(blue) / 0xff)
        
    }
}
