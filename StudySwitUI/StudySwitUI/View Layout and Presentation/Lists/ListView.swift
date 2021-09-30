//
//  ListView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.")
            ForEach(0..<200) {(i) in
                Text("Text \(i)")
            }
            
            
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
