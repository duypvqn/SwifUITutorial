//
//  PageView.swift
//  StudySwitUI
//
//  Created by Pham Viet Duy on 2021/10/01.
//

import SwiftUI

struct PageData {
    var imageSystemName: String
    static func stub()->[PageData] {
        return [
            PageData(imageSystemName: "star"),
            PageData(imageSystemName: "bookmark"),
            PageData(imageSystemName: "star"),
            PageData(imageSystemName: "bookmark"),
            PageData(imageSystemName: "star"),
        ]
    }
}
struct PageView: View {
    @State private var currentPage: Int = 0
    static var Colors : [Color] = [.red, .blue, .gray]
    var datas = PageData.stub().map { (pageData) in
        AnyView(
            Image(systemName: pageData.imageSystemName)
                .foregroundColor(PageView.Colors[Int.random(in: 0..<PageView.Colors.count)])
                .aspectRatio(contentMode: .fill)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height, alignment: .leading)
        )
        
    }
    var body: some View {
        PageViewController(pages: datas, currentPage: $currentPage)
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
