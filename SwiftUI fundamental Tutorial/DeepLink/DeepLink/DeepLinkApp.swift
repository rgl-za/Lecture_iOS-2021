//
//  DeepLinkApp.swift
//  DeepLink
//
//  Created by 지현정 on 2021/10/05.
//

import SwiftUI

@main
struct DeepLinkApp: App {
    
    @State var selectedTab = TabIendtifier.todos
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        TodosView().tabItem {
                            VStack{
                                Image(systemName: "list.bullet")
                                Text("TODO")
                            }
                        }.tag(TabIendtifier.todos)
                        ProfileView().tabItem {
                            VStack{
                                Image(systemName: "person.circle.fill")
                                Text("Profile")
                            }
                        }.tag(TabIendtifier.profile)
                    })
                .onOpenURL(perform: { url in
                    // 열려야 하는 url 처리
                    guard let tabId = url.tabIdentifier else { return }
                    selectedTab = tabId
                })
        }
    }
}

struct DeepLink_Previews: PreviewProvider{
    static var previews: some View{
        Text("HELLO WORLD")
    }
}

// 어떤 탭이 선택되었는지
enum TabIendtifier : Hashable{
    case todos
    case profile
}

// 어떤 페이지를 가져 와야 하는지
enum PageIdentifier : Hashable{
    case todoItem(id: UUID)
}

// URL을 extension하여 확장
extension URL{
    // deeplink-swiftui 스키마가 url로 들어왔다면 true로 반환
    // info에서 추가한 딥링크가 들어왔는지 여부
    var isDeeplink : Bool{
        return scheme == "deeplink-swiftui"
    }
    
    // url 들어오는 것으로 어떤 타입의 탭을 보여줘야 하는지 가져오기
    var tabIdentifier: TabIendtifier? {
        guard isDeeplink else { return nil }
        
        // deeplink-swiftui://[host]
        switch host {
        case "todos":
            return .todos
        case "profile":
        return .profile
        default:
            return nil
        }
    }
    
    var detailPage: PageIdentifier?{
        // deeplink-swiftui://[host]/[pathComponents]/인 경우
        // ["/", "id"] 형식으로 들어옴
        
        print("pathComponents: \(pathComponents)")
        
        guard let tabId = tabIdentifier, pathComponents.count > 1,
            let uuid = UUID(uuidString: pathComponents[1])
            else { return nil }
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}
