//
//  LoadingView.swift
//  StudySwitUI
//
//  Created by Pham Viet Duy on 2021/10/01.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    var style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView<Content>: View where Content:View {
    var content: ()-> Content
    @Binding var isAnimating:Bool
    var body: some View {
        ZStack {
            content()
            if #available(iOS 14.0, *) {
                if isAnimating {
                    ProgressView()
                }
            } else {
                ActivityIndicator(isAnimating: $isAnimating, style: .large)
            }
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(content:{
            Image(systemName: "star").padding()
        }, isAnimating:.constant(false))
    }
}
