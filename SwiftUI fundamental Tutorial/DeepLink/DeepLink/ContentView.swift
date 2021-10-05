//
//  ContentView.swift
//  DeepLink
//
//  Created by 지현정 on 2021/10/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            TabView{
                List{
                    ForEach(1...20, id: \.self){ index in
                        NavigationLink(
                            
                            destination: Text("details of \(index) "),
                            label: {
                                Text("TODO \(index)")
                            }
                        )
                    }
                }
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("TODO")
                }
                .tag(0)
            
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
                .tag(1)
            }.navigationTitle("TODO LIST")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
