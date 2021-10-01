//
//  DisclosureGroupView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct DisclosureGroupView: View {
    
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    @State private var perInfo = PersonInfo()
    
    var body: some View {
        if #available(iOS 14.0, *){
            List {
                Text("A view that shows or hides another content view, based on the state of a disclosure control.")
                DisclosureGroup("Person's info") {
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
            }
            .navigationBarTitle("\(String(describing: DisclosureGroupView.self))")
            
        } else {
            Text("Only exist from iOs14")
        }
    }
}

struct DisclosureGroupView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureGroupView()
    }
}
