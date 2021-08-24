//
//  MyNavigationView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/23.
//

import SwiftUI

struct MyNavigationView: View{
    var body: some View{
        
        NavigationView{
        //Text("MyNavigationView")
            
            //default=largetitle
            MyList()
            //.navigationBarTitle("안녕하세요", displayMode: .large)
//                .navigationBarTitle("안녕하세요")
                .navigationBarItems(leading: Button(action:{
                    print("클릭 됨")
                }){
                    Text("test")
                }, trailing: NavigationLink(
                    destination: Text("NextPage")){
                        //Text("Navigate")
                        Image(systemName:  "bookmark.fill")
                            .font(.system(size: 25))
                            .foregroundColor(Color.black)
                    })
            
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider{
    static var previews: some View{
        MyNavigationView()
    }
}
