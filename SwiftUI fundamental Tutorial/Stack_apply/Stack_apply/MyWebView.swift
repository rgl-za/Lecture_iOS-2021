//
//  MyWebView.swift
//  Stack_apply
//
//  Created by 지현정 on 2021/08/24.
//

import SwiftUI
import WebKit

struct MyWebView: UIViewRepresentable {
    
    var url: String
    
    //UI View 만들기
    func makeUIView(context: Context) -> WKWebView {
        
        //url unwrapping
        guard let url = URL(string: self.url)
        else{ //url이 없으면 기본 웹페이지 보여줌
            return WKWebView()
        }
        
        //위에서 받은 url로 url 리퀘스트 인스턴스 생성
        let urlRequest = URLRequest(url: url)
        let wkWebview = WKWebView()
        wkWebview.load(urlRequest)
        return wkWebview
    }

    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>)
        {
            
    }
}

struct MyWebView_Previews: PreviewProvider{
    static var previews: some View {
        MyWebView(url: "http://google.com")
    }
}
