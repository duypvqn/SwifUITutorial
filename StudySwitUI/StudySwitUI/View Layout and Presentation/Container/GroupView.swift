//
//  GroupView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .leading) {
                Text("Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.")
                Divider()
                Group {
                    Text("SwiftUI")
                        .font(.largeTitle)
                    Text("Combine")
                    Text("Swift System")
                }
                .font(.headline)
            }
        }.padding()
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
