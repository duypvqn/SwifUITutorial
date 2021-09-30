//
//  ForeachView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct ForeachView: View {
    var body: some View {
        List {
            Text("A structure that computes views on demand from an underlying collection of identified data.")
            ForEach(0..<200) {(i) in
                VStack {
                    Text("row")
                    Text("\(i)")
                }
            }
        }
    }
}

struct ForeachView_Previews: PreviewProvider {
    static var previews: some View {
        ForeachView()
    }
}
