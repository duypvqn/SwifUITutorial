//
//  SectionView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct SectionView: View {
    @State private var title = ""
    @State private var content = ""
    var body: some View {
        List {
            Text("A container view that you can use to add hierarchy to certain collection views.")
            Section(header: Text("Post's info")) {
                HStack {
                    Text("title")
                        .multilineTextAlignment(.leading)
                        .frame(width:100)
                    TextField("post's title", text: $title)
                        .border(Color.black, width: 1)
                }
                HStack(alignment: .top) {
                    Text("content")
                        .multilineTextAlignment(.leading)
                        .frame(width:100)
                    if #available(iOS 14.0, *) {
                        TextEditor(text: $content)
                            .border(Color.black, width: 1)
                            .frame(height: 100)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
