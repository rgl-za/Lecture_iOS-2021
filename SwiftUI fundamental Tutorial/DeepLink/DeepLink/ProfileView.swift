//
//  ProfileView.swift
//  DeepLink
//
//  Created by 지현정 on 2021/10/06.
//

import Foundation
import SwiftUI

struct ProfileView: View{
    
    var body: some View{
        Rectangle()
            .foregroundColor(.blue)
            .frame(width: 100, height: 100)
            .cornerRadius(15)
            .overlay(
                Text("Profile")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            )
        
    }
}

struct ProfileView_Previews: PreviewProvider{
    static var previews: some View{
        ProfileView()
    }
}
