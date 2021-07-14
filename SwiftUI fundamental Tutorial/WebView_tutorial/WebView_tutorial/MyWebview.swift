//
//  MyWebview.swift
//  WebView_tutorial
//
//  Created by 지현정 on 2021/07/10.
//

import SwiftUI
import WebKit

// UIkit의 UIView를 사용할 수 있도록함
// 만약 SwiftUI에서 UIkit의 viewcontroller를 사용하고 싶을 때 UIViewRepresentable에서 사용
struct MyWebview: UIViewRepresentable {
    
    var urlToLoad: String
    
    //UIView 만들기
    func makeUIView(context: Context) -> WKWebView {
            
            // 가져온 self.urlToLoad로 생성한 URL의 값이 비어있다면 return WKWebView
            // URL이 있다면 아래의 webview.load에 값을 넣어 줌
            guard let url = URL(string: self.urlToLoad) else{
                return WKWebView()
            }
            
            // 웹뷰 인스턴스 생성
            let webview = WKWebView()
            
            //웹뷰 로드
            webview.load(URLRequest(url: url))
            
            //웹뷰 반환
            return webview
        }
        
    //업데이트 UIView
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "https://www.naver.com")
    }
}
