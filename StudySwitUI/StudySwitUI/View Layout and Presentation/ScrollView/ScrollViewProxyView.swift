//
//  ScrollViewProxyView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct ScrollViewProxyView: View {
    var body: some View {
        List {
            Text("You don’t create instances of ScrollViewProxy directly. Instead, your ScrollViewReader receives an instance of ScrollViewProxy in its content view builder. You use actions within this view builder, such as button and gesture handlers or the onChange(of:perform:) method, to call the proxy’s scrollTo(_:anchor:) method.")
        }
    }
}

struct ScrollViewProxyView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewProxyView()
    }
}
