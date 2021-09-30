//
//  OutlineGroupView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct FileItem: Hashable, Identifiable, CustomStringConvertible {
    var id: Self { self }
    var name: String
    var children: [FileItem]? = nil
    var description: String {
        switch children {
        case nil:
            return "📄 \(name)"
        case .some(let children):
            return children.isEmpty ? "📂 \(name)" : "📁 \(name)"
        }
    }
}


struct OutlineGroupView: View {
    let data =
        FileItem(name: "users",
                 children: [
                    FileItem(name: "user1234",
                             children: [
                                FileItem(name: "Photos",
                                         children: [
                                            FileItem(name: "photo001.jpg"),
                                            FileItem(name: "photo002.jpg")]),
                                FileItem(name: "Movies",
                                         children: [
                                            FileItem(name: "movie001.mp4")]),
                                FileItem(name: "Documents", children: [])
                             ]),
                    FileItem(name: "newuser",
                            children:[
                                FileItem(name: "Documents", children: [])
                            ])
                 ])
    
    var body: some View {
        List {
            if #available(iOS 14.0, *) {
                OutlineGroup(data, children: \.children) { (fileItem) in
                    Text(fileItem.description)
                }
            } else {
                Text("not exits below ios 14")
            }
        }
    }
}

struct OutlineGroupView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineGroupView()
    }
}
