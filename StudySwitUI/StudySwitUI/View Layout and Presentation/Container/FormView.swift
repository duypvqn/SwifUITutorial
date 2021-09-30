//
//  FormView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct FormView: View {
    @State private var isExpand = true
    @State private var perInfo = PersonInfo()

    var body: some View {
        List {
            Text("")
            Form(content: {
                Section(header: Text("header"), footer: Text("footer")) {
                    if #available(iOS 14.0, *) {
                        DisclosureGroup("Person Info", isExpanded: $isExpand){
                            VStack {
                                HStack {
                                    Text("name"+":")
                                    TextField("name", text: $perInfo.name)
                                }
                                HStack {
                                    Text("address"+":")
                                    TextField("address", text: $perInfo.name)
                                }
                                HStack {
                                    Text("phone"+":")
                                    TextField("phone", text: $perInfo.name)
                                }
                            }
                        }
                    } else {
                        // Fallback on earlier versions
                        Text("Only exist from iOs14")
                    }
                }
                Section {
                    if #available(iOS 14.0, *) {
                        DisclosureGroup {
                            Toggle("Push", isOn: .constant(true))
                            Toggle("Email", isOn: .constant(true))
                            Toggle("SMS", isOn: .constant(false))
                        } label: {
                            Text("Preferences")
                                .font(.headline)
                        }
                    } else {
                        Text("Only exist from iOs14")
                    }
                }
                .navigationBarTitle("FormView")
            })
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
