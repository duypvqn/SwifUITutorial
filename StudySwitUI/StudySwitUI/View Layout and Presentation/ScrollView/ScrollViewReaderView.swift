//
//  ScrollViewReaderView.swift
//  StudySwitUI
//
//  Created by DuyPhamViet on 2021/09/29.
//

import SwiftUI

struct ScrollViewReaderView: View {
    var topID = 1000
    var bottomID = 1001
    @State private var inputIdx = "0"
    
    var body: some View {
        List {
            Text("The scroll view reader’s content view builder receives a ScrollViewProxy instance; you use the proxy’s scrollTo(_:anchor:) to perform scrolling.")
            if #available(iOS 14.0, *) {
                ScrollViewReader { proxy in
                    ScrollView {
                        Button("Scroll to Bottom") {
                            withAnimation {
                                proxy.scrollTo(bottomID)
                            }
                        }
                        .id(topID)
                        
                        HStack {
                            Text("Custom index")
                            TextField("0", text: $inputIdx)
                        }
                        Button("Go to index"){
                            withAnimation {
                                proxy.scrollTo(Int(inputIdx), anchor: .top)
                            }
                        }
                            
                        VStack(spacing: 0) {
                            ForEach(0..<100) { i in
                                color(fraction: Double(i) / 100)
                                .frame(height: 32)
                                .id(i)
                            }
                        }
                        
                        Button("Top") {
                            withAnimation {
                                proxy.scrollTo(topID)
                            }
                        }
                        .id(bottomID)
                    }
                }
            } else {
                // Fallback on earlier versions
                Text("")
            }
        }
    }
    
    func color(fraction: Double) -> Color {
        Color(red: fraction, green: 1 - fraction, blue: 0.5)
    }
}

struct ScrollViewReaderView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderView()
    }
}
