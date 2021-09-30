//
//  ContentView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/24.
//

import SwiftUI

struct SwiftUIType: Hashable {
    enum UIType {
        case Form, Group, GroupBox, ControlGroup
        case NavigationView, NavigationLink,OutlineGroup, DisclosureGroup, TabView, HSplitView, VSplitView
        case ScrollView, ScrollViewReader, ScrollViewProxy
        case List, Section, Foreach
        case Table
    }
    
    var name: String
    var type: UIType?
    var childs: [SwiftUIType]?
    
    static func stub()->[SwiftUIType]{
        return [
            SwiftUIType(name: "Container",
                        childs: [
                            SwiftUIType(name: "Form(iOs14+)",
                                        type:.Form,
                                        childs: nil),
                            SwiftUIType(name: "Group(iOs13+)",
                                        type:.Group,
                                        childs: nil),
                            SwiftUIType(name: "GroupBox(iOs14+)",
                                        type:.GroupBox,
                                         childs: nil),
                            SwiftUIType(name: "ControlGroup(from iOs 15 (Beta))",
                                        type:.ControlGroup,
                                         childs: nil)
                        ]),
            SwiftUIType(name: "HierarchicalView",
                        childs: [
                            SwiftUIType(name: "NavigationView(iOs14+)",
                                        type:.NavigationView,
                                         childs: nil),
                            SwiftUIType(name: "NavigationLink(iOs14+)",
                                        type:.NavigationLink,
                                         childs: nil),
                            SwiftUIType(name: "OutlineGroup(iOs14+)",
                                        type:.OutlineGroup,
                                         childs: nil),
                            SwiftUIType(name: "DisclosureGroup(iOs14+)",
                                        type:.DisclosureGroup,
                                         childs: nil),
                            SwiftUIType(name: "TabView(iOs13+)",
                                        type:.TabView,
                                         childs: nil),
                            SwiftUIType(name: "HSplitView(iOs14+)",
                                        type:.HSplitView,
                                         childs: nil),
                            SwiftUIType(name: "VSplitView(iOs14+)",
                                        type:.VSplitView,
                                         childs: nil)
                        ]),
            SwiftUIType(name: "ScrollViews",
                        childs: [
                            SwiftUIType(name: "ScrollView(iOs13+)",
                                        type: .ScrollView,
                                         childs: nil),
                            SwiftUIType(name: "ScrollViewReader(iOs14+)",
                                        type:.ScrollViewReader,
                                         childs: nil),
                            SwiftUIType(name: "ScrollViewProxy(iOs14+)",
                                        type:.ScrollViewProxy,
                                         childs: nil)
                        ]),
            SwiftUIType(name: "Lists",
                        childs: [
                            SwiftUIType(name: "Lists(iOs13+)",
                                        type:.List,
                                         childs: nil),
                            SwiftUIType(name: "Sections(iOs14+)",
                                        type:.Section,
                                         childs: nil),
                            SwiftUIType(name: "ForEach(iOs13+)",
                                        type:.Foreach,
                                         childs: nil)
                        ]),
            SwiftUIType(name: "Tables",
                        childs: [
                            SwiftUIType(name: "Tables(macOs12+)",
                                        type:.Table,
                                         childs: nil),
                        ]),
        ]
    }
}

struct ContentView: View {
    enum SwiftUI: String, CaseIterable {
        case Container
        case HierarchicalView
        case ScrollViews
        case Lists
        case Tables
    }
    
    var data = SwiftUIType.stub()
    
    var arr = ["abc", "def"]
    var body: some View {
        NavigationView {
            List {
                if #available(iOS 14.0, *) {
                    OutlineGroup(data, id: \.self, children: \.childs) { (uiType) in
                        switch uiType.type {
                        case .Form:
                            NavigationLink(
                                destination: FormView()){
                                Text(uiType.name)
                            }
                        case .Group:
                            NavigationLink(
                                destination: GroupView()){
                                Text(uiType.name)
                            }
                        case .GroupBox:
                            NavigationLink(
                                destination: GroupBoxView()){
                                Text(uiType.name)
                            }
                        case .ScrollView:
                            NavigationLink(
                                destination: Scroll()){
                                Text(uiType.name)
                            }
                        case .ScrollViewReader:
                            NavigationLink(
                                destination: ScrollViewReaderView()){
                                Text(uiType.name)
                            }
                        case .ScrollViewProxy:
                            NavigationLink(
                                destination: ScrollViewProxyView()){
                                Text(uiType.name)
                            }
                        case .List:
                            NavigationLink(
                                destination: ListView()){
                                Text(uiType.name)
                            }
                        case .Section:
                            NavigationLink(
                                destination: SectionView()){
                                Text(uiType.name)
                            }
                        case .Foreach:
                            NavigationLink(
                                destination: ForeachView()){
                                Text(uiType.name)
                            }
//                        case .Table:
//                            NavigationLink(
//                                destination: TableView()){
//                                Text(uiType.name)
//                            }
//                        case .OutlineGroup:
//                            NavigationLink(
//                                destination: OutlineGroupView()){
//                                Text(uiType.name)
//                            }
//                        case .DisclosureGroup:
//                            NavigationLink(
//                                destination: DisclosureGroupView()){
//                                Text(uiType.name)
//                            }
//                        case .TabView:
//                            NavigationLink(
//                                destination: TabViewDetail()){
//                                Text(uiType.name)
//                            }
                        default:
                            Text(uiType.name)
                        }
                    }
                } else {
                    // Fallback on earlier versions
                    Text("")
                }
            }.navigationBarTitle("SWiftUI")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
