//
//  GroupBoxView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct GroupBoxView: View {
    @State private var userAgreed = false
    var body: some View {
        List {
            Text("Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.")
            if #available(iOS 14.0, *) {
                GroupBox(label: Label("End-User Agreement", systemImage: "building.columns")){
                    ScrollView(.vertical, showsIndicators: true) {
                        Text("Use a group box when you want to visually distinguish a portion of your user interface with an optional title for the boxed content.\nThe following example sets up a GroupBox with the label “End-User Agreement”, and a long agreementText string in a Text view wrapped by a ScrollView. The box also contains a Toggle for the user to interact with after reading the text.")
                            .font(.footnote)
                    }
                    .frame(height: 100)
                    Toggle(isOn: $userAgreed) {
                        Text("I agree to the above terms")
                    }
                }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct GroupBoxView_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxView()
    }
}
