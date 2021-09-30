//
//  Scroll.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct Scroll: View {
    var body: some View {
        List {
            Text("The scroll view displays its content within the scrollable content region. As the user performs platform-appropriate scroll gestures, the scroll view adjusts what portion of the underlying content is visible. ScrollView can scroll horizontally, vertically, or both, but does not provide zooming functionality.")
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
                }
            }
        }
    }
}

struct Scroll_Previews: PreviewProvider {
    static var previews: some View {
        Scroll()
    }
}
