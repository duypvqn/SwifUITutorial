//
//  HierarchicalViewDetail.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct HierarchicalViewDetail: View {
    var body: some View {
        List {
            Text("OutlineGroup")
            OutlineGroupView()
            
            Text("DisclosureGroup")
            DisclosureGroupView()
            Spacer()
        }
    }
}

struct HierarchicalViewDetail_Previews: PreviewProvider {
    static var previews: some View {
        HierarchicalViewDetail()
    }
}
