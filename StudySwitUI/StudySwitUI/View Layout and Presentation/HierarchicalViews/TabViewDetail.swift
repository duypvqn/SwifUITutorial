//
//  TabViewDetail.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct TabViewDetail: View {
    @State private var selectedTab = 0
    
    var body: some View {
        /*
         A view that switches between multiple child views using interactive user interface elements
         */
        Text("OutlineGroup")
//        TabView(selection: $selectedTab,
//                content:  {
//                    OutlineGroupView()
//                        .tabItem {
//                            Text("OutlineGroup")
//                            Image(systemName: "star")
//                        }
//                        .tag(1)
//                    DisclosureGroupView()
//                        .tabItem {
//                            Text("DisclosureGroup")
//                            Image(systemName: "bookmark")
//                        }
//                        .tag(2)
//                }
//        )
    }
}

struct TabViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDetail()
    }
}
